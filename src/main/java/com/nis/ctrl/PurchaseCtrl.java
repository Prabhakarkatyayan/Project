package com.nis.ctrl;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.nis.model.Employee;
import com.nis.model.PurchaseRegister;
import com.nis.repository.EmployeeRepository;
import com.nis.repository.PurchaseRepository;

@RestController
public class PurchaseCtrl {
	@Autowired
	PurchaseRepository purchaseRepository;
	@Autowired
	EmployeeRepository employeeRepository;
	
	@GetMapping("/PurchaseRegister")
	public ModelAndView purchaseView() {
		return new ModelAndView("PurchaseRegister","purchase",new PurchaseRegister());
	}

	

@PersistenceUnit
EntityManagerFactory emf;

	@PostMapping("/PurchaseSubmit")
	public ModelAndView purchaseSubmit(@ModelAttribute PurchaseRegister purchase) {
		purchaseRepository.save(purchase);
		Map<String,Object>model=new HashMap<String,Object>();
		model.put("purchase", new PurchaseRegister());
		model.put("Message","Record Submitted");
		return new ModelAndView("PurchaseRegister",model);
	}

	@GetMapping("/ReportPurchaseByProductInterfaceJs")
	public ModelAndView reportPurchaseByProductInterfaceJs()
	{ return new ModelAndView("ReportPurchaseByProductUsingJs");
		}


	@GetMapping("/ReportPurchaseByEmployeeInterfaceJs")
	public ModelAndView reportPurchaseByEmployeeInterfaceJs()
	{ return new ModelAndView("ReportPurchaseByEmployeeUsingJs");
		}

	
	
	
@GetMapping("/ReportPurchaseByEmployees")
public List  purchaseByEmployees(HttpServletRequest req)
{   EntityManager em=emf.createEntityManager();
    List L=(List)em.createQuery("select I,(select P.productname from Product P where P.productid=I.productid),(select E.employeename from Employee E where E.employeeid=I.employeeid) from PurchaseRegister I where employeeid=:eid").setParameter("eid", Integer.parseInt(req.getParameter("employeeid"))).getResultList();
    return L;
		
	}

	
	

@GetMapping("/ReportPurchaseByProducts")
public List  purchaseByProducts(HttpServletRequest req)
{   EntityManager em=emf.createEntityManager();
    List L=(List)em.createQuery("select I,(select P.productname from Product P where P.productid=I.productid),(select E.employeename from Employee E where E.employeeid=I.employeeid) from PurchaseRegister I where productid=:pid").setParameter("pid", Integer.parseInt(req.getParameter("productid"))).getResultList();
    return L;
}




}

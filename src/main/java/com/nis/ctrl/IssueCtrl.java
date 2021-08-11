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
import com.nis.model.IssueRegister;
import com.nis.model.Product;
import com.nis.repository.IssueRepository;
import com.nis.repository.ProductRepository;

@RestController
public class IssueCtrl {
@Autowired	
IssueRepository issueRepository;
@Autowired	
ProductRepository productRepository;

@GetMapping("/IssueRegister")
public ModelAndView issueRegister()
{ return new ModelAndView("IssueRegister","issue",new IssueRegister());
	}

@PostMapping("/IssueSubmit")
public ModelAndView issueSubmit(@ModelAttribute IssueRegister issue)
{   issueRepository.save(issue);
Map<String,Object>model=new HashMap<String,Object>();
model.put("issue",new IssueRegister());
model.put("Message", "Record Submitted");
Product P=productRepository.getOne(issue.getProductid());
int stock=Integer.parseInt(P.getProductstock())-issue.getQtyissue();
P.setProductstock(stock+"");
productRepository.save(P);


return new ModelAndView("IssueRegister",model);
}


@GetMapping("/ReportIssueByEmployeeInterface")
public ModelAndView reportIssueByEmployeeInterface()
{ return new ModelAndView("ReportIssueByEmployeeInterface");
 }

@GetMapping("/ReportIssueByEmployeeInterfaceJs")
public ModelAndView reportIssueByEmployeeInterfaceJs()
{ return new ModelAndView("ReportIssueEmployeeUsingJs");
	}

@GetMapping("/ReportIssueByEmployee")
public ModelAndView issueByEmployee(HttpServletRequest req)
{   List<IssueRegister> L=issueRepository.reportIssueByEmployee(Integer.parseInt(req.getParameter("employeeid")));

	
	return new ModelAndView("ReportIssueByEmployee","issue",L);
	}


@GetMapping("/ReportIssueByProductInterfaceJs")
public ModelAndView reportIssueByProductInterfaceJs()
{ return new ModelAndView("ReportIssueProductUsingJs");
	}

@PersistenceUnit
EntityManagerFactory emf;

@GetMapping("/ReportIssueByEmployees")
public List  issueByEmployees(HttpServletRequest req)
{   EntityManager em=emf.createEntityManager();
    List L=(List)em.createQuery("select I,(select P.productname from Product P where P.productid=I.productid),(select E.employeename from Employee E where E.employeeid=I.employeeid),(select E.employeename from Employee E where E.employeeid=I.issueto) from IssueRegister I where employeeid=:eid").setParameter("eid", Integer.parseInt(req.getParameter("employeeid"))).getResultList();
    return L;
		
	}


@GetMapping("/ReportIssueByProducts")
public List  issueByProducts(HttpServletRequest req)
{   EntityManager em=emf.createEntityManager();
    List L=(List)em.createQuery("select I,(select P.productname from Product P where P.productid=I.productid),(select E.employeename from Employee E where E.employeeid=I.employeeid),(select E.employeename from Employee E where E.employeeid=I.issueto) from IssueRegister I where productid=:pid").setParameter("pid", Integer.parseInt(req.getParameter("productid"))).getResultList();
    return L;
		
	}




}





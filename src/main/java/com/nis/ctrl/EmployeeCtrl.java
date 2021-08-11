package com.nis.ctrl;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.nis.model.CityIndia;
import com.nis.model.Employee;
import com.nis.model.StateIndia;
import com.nis.repository.CityRepository;
import com.nis.repository.EmployeeRepository;
import com.nis.repository.StateRepository;

@RestController
public class EmployeeCtrl {
@Autowired
EmployeeRepository  employeeRepository;	
@Autowired
StateRepository stateRepository;
@Autowired
CityRepository cityRepository;

@GetMapping("/EmployeeHomePage")
public ModelAndView employeeHomePage()
{
 return new ModelAndView("EmployeeHomePage");	
}
@GetMapping("/Logout")
public ModelAndView employeeLogout(HttpServletRequest req)
{HttpSession ses=req.getSession();
  ses.invalidate();
 return new ModelAndView("EmployeeLogin","Emp",new Employee());	
}


@GetMapping("/EmployeeLogin")
public ModelAndView employeeLogin()
{
 return new ModelAndView("EmployeeLogin","Emp",new Employee());	
}
@PostMapping("/CheckEmployeeLogin")
public ModelAndView employeeCheckLogin(@ModelAttribute Employee employee,HttpServletRequest req)
{   List<Employee> E=employeeRepository.checkLogin(employee.getEmployeeid(), employee.getPassword());
    if(E.size()==0) {
    	Map<String,Object>model=new HashMap<String,Object>();
    	model.put("Emp",new Employee());
    	model.put("Message", "Invalid UID/Password");
    	return new ModelAndView("EmployeeLogin",model);	
    } 
    else
    { HttpSession ses=req.getSession();
      ses.setAttribute("SES_EMPLOYEE", E.get(0));
      ses.setAttribute("LTIME",new java.util.Date());

    	return new ModelAndView("redirect:/EmployeeHomePage");
    }
	
} 


@GetMapping("/Employee")
public ModelAndView employeeView()
{
 return new ModelAndView("Employee","Emp",new Employee());	
}
@PostMapping("/EmployeeSubmit")
public ModelAndView employeeSubmit(@RequestPart("pic") MultipartFile file,@ModelAttribute Employee employee)
{    employee.setPicture(file.getOriginalFilename()); 
	try {
	file.transferTo(new File("F:\\MM\\src\\main\\resources\\static\\images\\"+file.getOriginalFilename()));
}catch(Exception e) {}
	employeeRepository.save(employee);
Map<String,Object>model=new HashMap<String,Object>();
model.put("Emp",new Employee());
model.put("Message", "Record Submitted");

return new ModelAndView("Employee",model);	
}
@GetMapping("/AllEmployee")
public  ModelAndView displayAll()
{  List<Employee>employeeList=employeeRepository.findAll();

 return new ModelAndView("DisplayAllEmployee","employees",employeeList);
}

@GetMapping("/ListEmployee")
public  List<Employee> listEmployee()
{  List<Employee>employeeList=employeeRepository.findAll();

 return  employeeList;
}



@GetMapping("/DisplayById")
public  ModelAndView displayById(HttpServletRequest req)
{  
	Employee E=employeeRepository.getOne(Integer.parseInt(req.getParameter("id")));

 return new ModelAndView("DisplayById","employee",E);
}


@GetMapping("/EmployeeProfile")
public  ModelAndView EmployeeProfile(HttpServletRequest req)
{  
	Employee E=employeeRepository.getOne(Integer.parseInt(req.getParameter("id")));

 return new ModelAndView("EmployeeProfile","employee",E);
}


@GetMapping("/FetchState")
public  List<StateIndia> fetchState()
{   List<StateIndia> L=stateRepository.findAll();

 return L;
}
@GetMapping("/FetchCity")
public  List<CityIndia> fetchCity(HttpServletRequest req)
{   List<CityIndia> L=cityRepository.findCityByState(req.getParameter("sn"));

 return L;
}
	
@PostMapping("/EmployeeEditDelete")
public ModelAndView employeeEditDelete(HttpServletRequest req,@ModelAttribute Employee employee)
{    if(req.getParameter("btn").equals("Edit"))
{
	 
	 employeeRepository.save(employee);}
else if(req.getParameter("btn").equals("Delete"))
{ employeeRepository.deleteById(employee.getEmployeeid());
	}



 
return new ModelAndView("redirect:/AllEmployee");	
}
@PostMapping("/EditPicture")
public ModelAndView editPicture(@RequestPart("pic") MultipartFile file,@ModelAttribute Employee employee)
{  Employee E=employeeRepository.getOne(employee.getEmployeeid());
   E.setPicture(file.getOriginalFilename());

	try {
	file.transferTo(new File("C:\\Users\\Sandeep Sappal\\Documents\\workspace-sts-3.9.10.RELEASE\\MM\\src\\main\\resources\\static\\images\\"+file.getOriginalFilename()));
}catch(Exception e) {}
	employeeRepository.save(E);
 

	return new ModelAndView("redirect:/AllEmployee");	
}

}








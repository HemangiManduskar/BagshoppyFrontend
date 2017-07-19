package com.niit;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.niit.dao.CusDao;
import com.niit.model.Customer;

@Controller
public class CusController {
	@Autowired
	 CusDao customerDao;
	

	  // Landing Page--product is added in Model for Spring Form---List is added
	 // to retrive all data
	 @RequestMapping("/Customer")
	 public String home(Model m) {
	  m.addAttribute("isEditing", false);
	  m.addAttribute("Customer", new Customer());
	  m.addAttribute("CustomerList", customerDao.getAllCustomer());
	  m.addAttribute("msg", "");
	  return "Customer";
	 }

	  // Saving Customer
	 @RequestMapping(value = "/savecus", method = RequestMethod.POST)
	 public String save(@Valid @ModelAttribute("Customer") Customer cu,BindingResult result, Model m) {
		 if(result.hasErrors()){
			 return "Customer";
		 }
		 else{
	 customerDao.savecus(cu);
	  m.addAttribute("Customer", new Customer());
	  m.addAttribute("CustomerList", customerDao.getAllCustomer());
	  m.addAttribute("msg", "Customer added successfully");
	  return "Customer";
	 }
	 }

	  // Displaying Update Form
	 @RequestMapping(value = "/updatecus/{cusid}", method = RequestMethod.GET)
	 public String updatecat(@PathVariable("cusid") int cusid, Model m) {
		 Customer cu = customerDao.getcusById(cusid);
	  m.addAttribute("isEditing", true);
	  m.addAttribute("Customer", cu);
	  m.addAttribute("CustomerList", customerDao.getAllCustomer());
	  m.addAttribute("msg", "");
	  return "Customer";
	 }

	  // Updating Customer
	 @RequestMapping(value = "/updatecus", method = RequestMethod.POST)
	 public String updatecus(@ModelAttribute("customer") Customer cu, Model m) {
		 customerDao.updatecus(cu);
	  m.addAttribute("Customer", new Customer());
	  m.addAttribute("CustomerList",customerDao.getAllCustomer());
	  m.addAttribute("msg", "Customer updated successfully");
	  return "Customer";
	 }

	  // Deleting Customer
	 @RequestMapping(value = "/deletecus/{cusid}", method = RequestMethod.GET)
	 public String deletecus(@PathVariable("cusid") int cusid, Model m) {
		 customerDao.deletecusById(cusid);
	  m.addAttribute("Customer", new Customer());
	  m.addAttribute("CustomerList",customerDao.getAllCustomer());
	  m.addAttribute("msg", "Customer deleted successfully");
	  return "Customer";
	 }
	

}

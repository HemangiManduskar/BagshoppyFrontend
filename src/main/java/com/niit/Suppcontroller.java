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


import com.niit.dao.SuppDao;

import com.niit.model.Supplier;

@Controller
public class Suppcontroller 
{
	 @Autowired
	 SuppDao supplierDao;
	

	  // Landing Page--product is added in Model for Spring Form---List is added
	 // to retrive all data
	 @RequestMapping("/Supplier")
	 public String home(Model m) {
	  m.addAttribute("isEditing", false);
	  m.addAttribute("Supplier", new Supplier());
	  m.addAttribute("SupplierList", supplierDao.getAllSupplier());
	  m.addAttribute("msg", "");
	  return "Supplier";
	 }

	  // Saving Supplier
	 @RequestMapping(value = "/savesup", method = RequestMethod.POST)
	 public String savesup(@Valid @ModelAttribute("Supplier") Supplier s,BindingResult result, Model m) {
		 if(result.hasErrors()){
			 return "Supplier";
		 }
		 else{
			 supplierDao.savesup(s);
	  m.addAttribute("Supplier", new Supplier());
	  m.addAttribute("SupplierList", supplierDao.getAllSupplier());
	  m.addAttribute("msg", "Supplier added successfully");
	  return "Supplier";
	 }
	 }

	  // Displaying Update Form
	 @RequestMapping(value = "/updatesup/{supid}", method = RequestMethod.GET)
	 public String updatesup(@PathVariable("supid") int supid, Model m) {
		 Supplier s = supplierDao.getsupById(supid);
	  m.addAttribute("isEditing", true);
	  m.addAttribute("Supplier", s);
	  m.addAttribute("SupplierList", supplierDao.getAllSupplier());
	  m.addAttribute("msg", "");
	  return "Supplier";
	 }

	  // Updating Supplier
	 @RequestMapping(value = "/updatesup", method = RequestMethod.POST)
	 public String updatesup(@ModelAttribute("Supplier") Supplier s, Model m) {
		 supplierDao.updatesup(s);
	  m.addAttribute("Supplier", new Supplier());
	  m.addAttribute("SupplierList",supplierDao.getAllSupplier());
	  m.addAttribute("msg", "Supplier updated successfully");
	  return "Supplier";
	 }

	  // Deleting Supplier
	 @RequestMapping(value = "/deletesup/{supid}", method = RequestMethod.GET)
	 public String deletesup(@PathVariable("supid") int supid, Model m) {
		 supplierDao.deletesupById(supid);
	  m.addAttribute("Supplier", new Supplier());
	  m.addAttribute("SupplierList",supplierDao.getAllSupplier());
	  m.addAttribute("msg", "Supplier deleted successfully");
	  return "Supplier";
	 }	
}

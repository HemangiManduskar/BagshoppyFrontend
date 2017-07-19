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

import com.niit.dao.CatDao;
import com.niit.model.Category;

@Controller
public class Catcontroller {

	
	 @Autowired
	 CatDao categoryDao;
	

	  // Landing Page--product is added in Model for Spring Form---List is added
	 // to retrive all data
	 @RequestMapping("/Category")
	 public String home(Model m) {
	  m.addAttribute("isEditing", false);
	  m.addAttribute("Category", new Category());
	  m.addAttribute("CategoryList", categoryDao.getAllCategory());
	  m.addAttribute("msg", "");
	  return "Category";
	 }

	  // Saving Category
	 @RequestMapping(value = "/savecat", method = RequestMethod.POST)
	 public String save(@Valid @ModelAttribute("Category") Category c,BindingResult result, Model m) {
		 if(result.hasErrors()){
			 return "Category";
		 }
		 else{
		 categoryDao.savecat(c);
	  m.addAttribute("Category", new Category());
	  m.addAttribute("CategoryList", categoryDao.getAllCategory());
	  m.addAttribute("msg", "Categoryadded successfully");
	  return "Category";
	 }
	 }

	  // Displaying Update Form
	 @RequestMapping(value = "/updatecat/{catid}", method = RequestMethod.GET)
	 public String updatecat(@PathVariable("catid") String catid, Model m) {
	  Category c = categoryDao.getcatById(catid);
	  m.addAttribute("isEditing", true);
	  m.addAttribute("Category", c);
	  m.addAttribute("CategoryList", categoryDao.getAllCategory());
	  m.addAttribute("msg", "");
	  return "Category";
	 }

	  // Updating Product
	 @RequestMapping(value = "/updatecat", method = RequestMethod.POST)
	 public String updatecat(@ModelAttribute("category") Category c, Model m) {
		 categoryDao.updatecat(c);
	  m.addAttribute("Category", new Category());
	  m.addAttribute("CategoryList",categoryDao.getAllCategory());
	  m.addAttribute("msg", "Category updated successfully");
	  return "Category";
	 }

	  // Deleting Product
	 @RequestMapping(value = "/deletecat/{catid}", method = RequestMethod.GET)
	 public String deletecat(@PathVariable("catid") String catid, Model m) {
		 categoryDao.deletecatById(catid);
	  m.addAttribute("Category", new Category());
	  m.addAttribute("CategoryList",categoryDao.getAllCategory());
	  m.addAttribute("msg", "Category deleted successfully");
	  return "Category";
	 }

}

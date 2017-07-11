package com.niit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	  // Saving Product
	 @RequestMapping(value = "/save", method = RequestMethod.POST)
	 public String save(@ModelAttribute("Category") Category c, Model m) {
		 categoryDao.save(c);
	  m.addAttribute("Category", new Category());
	  m.addAttribute("CategoryList", categoryDao.getAllCategory());
	  m.addAttribute("msg", "Categoryadded successfully");
	  return "Category";
	 }

	  // Displaying Update Form
	 @RequestMapping(value = "/update/{catid}", method = RequestMethod.GET)
	 public String update(@PathVariable("catid") String catid, Model m) {
	  Category c = categoryDao.getById(catid);
	  m.addAttribute("isEditing", true);
	  m.addAttribute("Category", c);
	  m.addAttribute("CategoryList", categoryDao.getAllCategory());
	  m.addAttribute("msg", "");
	  return "Category";
	 }

	  // Updating Product
	 @RequestMapping(value = "/update", method = RequestMethod.POST)
	 public String update(@ModelAttribute("category") Category c, Model m) {
		 categoryDao.update(c);
	  m.addAttribute("Category", new Category());
	  m.addAttribute("CategoryList",categoryDao.getAllCategory());
	  m.addAttribute("msg", "Category updated successfully");
	  return "Category";
	 }

	  // Deleting Product
	 @RequestMapping(value = "/delete/{catid}", method = RequestMethod.GET)
	 public String delete(@PathVariable("catid") String catid, Model m) {
		 categoryDao.deleteById(catid);
	  m.addAttribute("Category", new Category());
	  m.addAttribute("CategoryList",categoryDao.getAllCategory());
	  m.addAttribute("msg", "Category deleted successfully");
	  return "Category";
	 }

}

package com.controller;


import com.model.Category;
import com.service.CategoryService;

import org.hibernate.mapping.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by erzyasd on 01.08.15.
 */

@Controller
public class CategoryController {


    private CategoryService categoryService;

    @Autowired
    public CategoryController(CategoryService categoryService){
        this.categoryService = categoryService;
    }

    @RequestMapping(value = "/takeCategory/{categoryId}", method = RequestMethod.GET)
    public String getCategory(@PathVariable("categoryId") Integer categoryId, Model model){
        Category category = categoryService.getCategory(categoryId);
        model.addAttribute("category", category);
        return "categ";
    }
 /*   @RequestMapping(value = "/categoryList", method = RequestMethod.GET)
    public ModelAndView getCategories() {

        List<Category> category = this.categoryService.listCategory();
        ModelAndView model = new ModelAndView();
        model.addObject("categories", category);

        return model;
    }*/

/*    @RequestMapping(value = "/categoryList",method = RequestMethod.GET)
    public String listAll(Model model){
        List<Category> category = this.categoryService.listCategory();
        model.addAttribute("categorList", category);
        System.out.println("TEEEEST" + category);
        return "addItem";
    }*/


    @RequestMapping(value = "/addCategory", method = RequestMethod.POST)
    public String addCategory(@ModelAttribute("category")Category category){
        if(category.getId()==null){
            categoryService.addCategory(category);
        }else {
            categoryService.updateCategoty(category);
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/addCategory", method = RequestMethod.GET)
    public String addCategory(Model model){
        model.addAttribute("category", new Category());
        return "addCategory";
    }

    @RequestMapping(value = "/deleteCategory/{categoryId}")
    public String deleteCategory(@PathVariable("categoryId") Integer categoryId){
        categoryService.deleteCategory(categoryId);
        return "redirect:/";
    }

    @RequestMapping(value = "/updateCategory", method = RequestMethod.POST)
    public String updateCategory(@ModelAttribute("category") Category category){
        if(category.getId() > 0){

            categoryService.updateCategoty(category);

        }
        return "index";
    }
}

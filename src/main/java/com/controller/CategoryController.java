package com.controller;


import com.dao.CategoryDao;
import com.model.Category;
import com.service.CategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by erzyasd on 01.08.15.
 */

@Controller
public class CategoryController {


    private CategoryDao categoryDao;
    @Autowired
    public CategoryController(CategoryDao categoryDao){
        this.categoryDao = categoryDao;
    }

    @RequestMapping(value = "/take/{categoryId}", method = RequestMethod.GET)
    public String getCategory(@PathVariable("categoryId") Integer categoryId, Model model){
        Category category = categoryDao.getCategory(categoryId);
        model.addAttribute("category", category);
        return "categ";
    }

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String listCategory(Model model){

        List<Category> category = this.categoryDao.listCategory();
        model.addAttribute("categories", category);
        return "index";
    }

/*    @RequestMapping("/")
    public String home(){
        return "redirect:/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addCategory(
            @ModelAttribute("category")
            Category category){
        categoryService.addCategory(category);

        return "redirect:/index";
    }

    @RequestMapping(value = "/delete/{categoryId}")
    public String addCategory(@PathVariable("categoryId") Integer categoryId){

        categoryService.deleteCategory(categoryId);

        return "redirect:/index";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updateCategory(@ModelAttribute("category") Category category){
        if(category.getId() > 0){

            categoryService.updateCategoty(category);

        }


        return "redirect:/index";
    }*/






}

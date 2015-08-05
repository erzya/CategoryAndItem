package com.controller;

import com.model.Category;
import com.model.Item;
import com.service.CategoryService;
import com.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by erzyasd on 03.08.15.
 */
@Controller
public class HomeController {

    private CategoryService categoryService;
    private ItemService itemService;

    @Autowired
    public HomeController(CategoryService categoryService,
                          ItemService itemService){
        this.categoryService = categoryService;
        this.itemService = itemService;
    }

//    @RequestMapping(value = "/",method = RequestMethod.GET)
//    public String listAll(Model model){
//        List<Category> category = this.categoryService.listCategory();
//        List<Item> item = this.itemService.listItem();
//        model.addAttribute("items", item);
//        model.addAttribute("categories", category);
//        return "index";
//    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getLists() {

        List<Category> category = this.categoryService.listCategory();
        List<Item> item = this.itemService.listItem();

        //return back to index.jsp
        ModelAndView model = new ModelAndView("index");

        model.addObject("categories", category);
        model.addObject("items", item);

        return model;

    }

//Bременное решение
    @RequestMapping(value = "/addItem", method = RequestMethod.GET)
    public String addItem(Model model){
        List<Category> category = this.categoryService.listCategory();
        model.addAttribute("categories", category);
        model.addAttribute("item", new Item());
        return "addItem";
    }
}

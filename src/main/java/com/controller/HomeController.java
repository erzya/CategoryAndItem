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

   /* @RequestMapping(value = "/",method = RequestMethod.GET)
    public String listAll(Model model){
        List<Category> category = this.categoryService.listCategory();
        List<Item> item = this.itemService.listItem();
        model.addAttribute("items", item);
        model.addAttribute("categories", category);
        return "index";
    }*/
}

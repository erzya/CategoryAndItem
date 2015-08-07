package com.controller;

import com.model.Category;
import com.model.Item;
import com.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by erzyasd on 03.08.15.
 */
@Controller
public class ItemController {

    private ItemService itemService;

    @Autowired
    public ItemController(ItemService itemService){
        this.itemService = itemService;
    }

    @RequestMapping(value = "/takeItem/{itemId}", method = RequestMethod.GET)
    public String getItem(@PathVariable("itemId") Integer itemId, Model model) {
        Item item = itemService.getItem(itemId);
        model.addAttribute("item", item);
        return "redirect:/index";
    }

    @RequestMapping(value = "/itemList", method = RequestMethod.GET)
    public ModelAndView getListItem() {
        List<Item> item = this.itemService.listItem();
        ModelAndView model = new ModelAndView("itemList");
        model.addObject("items", item);
        return model;
    }

    @RequestMapping(value = "/addItem", method = RequestMethod.POST)
    public String addItem(@ModelAttribute("item")Item item, BindingResult result, ModelMap model){

        System.out.println(item + "   tttttttttttttEEEEEEEEEEEE     ");
        System.out.println("!!!!!!!!!!!!! ");
        System.out.println(model + "   QQQQQQQQQQQQQQQQ QQQQQQQQQQQQ");
        if(item.getId()==null){


            itemService.addItem(item);

        }else {
            itemService.updateItem(item);
        }
        return "redirect:/";
    }



    @RequestMapping(value = "/deleteItem/{itemId}")
    public String deleteItem(@PathVariable("itemId") Integer itemId){
        itemService.deleteItem(itemId);
        return "redirect:/";
    }

}

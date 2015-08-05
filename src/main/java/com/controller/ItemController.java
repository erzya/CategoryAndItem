package com.controller;

import com.model.Item;
import com.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

/*    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String listAll(Model model) {
        List<Item> item = this.itemService.listItem();
        model.addAttribute("items", item);
    return "index";
    }*/



    @RequestMapping(value = "/addItem", method = RequestMethod.POST)
    public String addItem(@ModelAttribute("item")Item item){
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

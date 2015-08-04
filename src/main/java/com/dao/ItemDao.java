package com.dao;

import com.model.Item;

import java.util.List;

/**
 * Created by erzyasd on 03.08.15.
 */
public interface ItemDao {
    public void addItem(Item item);
    public void updateItem(Item item);
    public void deleteItem(Integer id);
    public Item getItem(Integer id);
    public List<Item> listItem();
}

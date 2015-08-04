package com.service.impl;

import com.dao.ItemDao;
import com.model.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by erzyasd on 03.08.15.
 */
@Service
public class ItemServiceImpl implements com.service.ItemService {
    @Autowired
    private ItemDao itemDao;
    @Transactional
    public void addItem(Item item) {
        itemDao.addItem(item);

    }
    @Transactional
    public void updateItem(Item item) {
        itemDao.updateItem(item);
    }
    @Transactional
    public void deleteItem(Integer id) {
        itemDao.deleteItem(id);
    }
    @Transactional
    public Item getItem(Integer id) {
        return itemDao.getItem(id);
    }
    @Transactional
    public List<Item> listItem() {
        return itemDao.listItem();
    }
}

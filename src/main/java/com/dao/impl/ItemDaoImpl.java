package com.dao.impl;

import com.dao.ItemDao;
import com.model.Item;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by erzyasd on 03.08.15.
 */
@Repository
public class ItemDaoImpl implements ItemDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void addItem(Item item) {
        sessionFactory.getCurrentSession().save(item);
    }

    public void updateItem(Item item) {
        sessionFactory.getCurrentSession().update(item);
    }

    public void deleteItem(Integer id) {
        Item item = (Item) sessionFactory.getCurrentSession().get(Item.class, id);
        if (null != item) {
            sessionFactory.getCurrentSession().delete(item);
        }
    }

    public Item getItem(Integer id) {
        Item item = (Item) sessionFactory.getCurrentSession().get(Item.class, id);
        return item;
    }
    @SuppressWarnings("unchecked")
    public List<Item> listItem() {
        return sessionFactory.getCurrentSession().createQuery("from Item").list();
    }
}

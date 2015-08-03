package com.dao.impl;

import com.dao.CategoryDao;
import com.model.Category;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by erzyasd on 01.08.15.
 */
@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao {
    @Autowired
    private SessionFactory sessionFactory;


    public void addCategory(Category category) {
        sessionFactory.getCurrentSession().save(category);

    }

    public void updateCategoty(Category category) {
        sessionFactory.getCurrentSession().update(category);

    }

    public void deleteCategory(Integer id) {
        Category category = (Category) sessionFactory.getCurrentSession().get(Category.class, id);
        if (null != category) {
            sessionFactory.getCurrentSession().delete(category);
        }
    }

    public Category getCategory(Integer id) {
        Category category = (Category) sessionFactory.getCurrentSession().get(Category.class, id);
        System.out.println(category.getName());
        return category;
    }

    @SuppressWarnings("unchecked")
    public List<Category> listCategory() {

        return  sessionFactory.getCurrentSession().createQuery("from Category").list();
    }
}

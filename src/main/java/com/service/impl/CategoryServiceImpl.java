package com.service.impl;

import com.dao.CategoryDao;
import com.model.Category;
import com.service.CategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by erzyasd on 01.08.15.
 */
@Service
public class CategoryServiceImpl implements CategoryService{

    @Autowired
    private CategoryDao categoryDao;

    @Transactional
    public void addCategory(Category category) {
        categoryDao.addCategory(category);
    }

    @Transactional
    public void updateCategoty(Category category) {
        categoryDao.updateCategoty(category);
    }

    @Transactional
    public void deleteCategory(Integer id) {
        categoryDao.deleteCategory(id);
    }

    @Transactional
    public Category getCategory(Integer id) {
        return categoryDao.getCategory(id);
    }

    @Transactional
    public List<Category> listCategory() {
        return categoryDao.listCategory();
    }
}

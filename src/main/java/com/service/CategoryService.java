package com.service;

import com.model.Category;

import java.util.List;

/**
 * Created by erzyasd on 01.08.15.
 */
public interface CategoryService {

    public void addCategory(Category category);

    public void updateCategoty(Category category);

    public void deleteCategory(Integer id);

    public Category getCategory(Integer id);

    public List<Category> listCategory();

}

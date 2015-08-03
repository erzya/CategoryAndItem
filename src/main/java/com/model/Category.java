package com.model;

import javax.persistence.*;


/**
 * Created by erzyasd on 01.08.15.
 */

@Entity
@Table(name = "category")
public class Category {
    @Id
    @Column(name ="id")
    @GeneratedValue
    private Integer id;

    @Column(name = "name")
    private String name;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }




}

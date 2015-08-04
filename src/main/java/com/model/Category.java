package com.model;

import org.hibernate.annotations.BatchSize;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;


/**
 * Created by erzyasd on 01.08.15.
 */

@Entity
@Table(name = "category")
public class Category implements Serializable{
    @Id
    @Column(name ="id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator="category_id_seq")
    @SequenceGenerator(name="category_id_seq", sequenceName="category_id_seq", allocationSize=1)
    private Integer id;

    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL, fetch = FetchType.LAZY )
    private Set<Item> itemSet = new HashSet<Item>(0);


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Set<Item> getItemSet() {

        return itemSet;
    }

    public void setItemSet(Set<Item> itemSet) {
        this.itemSet = itemSet;
    }

    @Override
    public String toString() {
        return "Category{" +
        "id=" + id +
        ", name='" + name + '\'' +
        '}';
    }
}

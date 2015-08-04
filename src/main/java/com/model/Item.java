package com.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by erzyasd on 01.08.15.
 */

@Entity
@Table(name = "item")
public class Item implements Serializable {

    @Id
    @Column(name ="id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator="item_id_seq")
    @SequenceGenerator(name="item_id_seq", sequenceName="item_id_seq", allocationSize=1)
    private Integer id;



    @Column(name = "name")
    private String name;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "category_id")
    private Category category;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Item{" + "id=" + id +", category=" +
                ", name='" + name + '\'' +
                '}';
    }
}

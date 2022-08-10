package com.brijincus.sample.application.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Category implements Cloneable {

	private Integer id;
	private String name;
	private String color;

	public Category() {
		super();
	}

	public Category(int id, String name) {
		this.id = id;
		this.name = name;
	}

	public Category clone() throws CloneNotSupportedException {
		// Assign the shallow copy to
		// new reference variable t
		Category t = (Category) super.clone();

		return t;
	}
}

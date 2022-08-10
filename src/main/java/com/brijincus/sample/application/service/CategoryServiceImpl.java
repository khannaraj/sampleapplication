package com.brijincus.sample.application.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.brijincus.sample.application.model.Category;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
public class CategoryServiceImpl implements CategoryService {


	@Override
	public Category[] getCategories() {
		List<Category> categoryDataList = new ArrayList<Category>();
		return categoryDataList.toArray(new Category[categoryDataList.size()]);
	}
	
}

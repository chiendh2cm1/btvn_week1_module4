package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;

public interface ProductService {
    ArrayList<Product> getProductList();
    int findById(int id);
    Product getProduct(int id);
    void createProduct(Product product);
void deleteProduct(Product product);
void editProduct(Product product, int id);


}

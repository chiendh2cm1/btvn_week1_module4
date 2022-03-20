package com.codegym.service.Impl;

import com.codegym.model.Product;
import com.codegym.service.ProductService;

import java.util.ArrayList;

public class ProductServiceImpl implements ProductService {
    private static final ArrayList<Product> products;

    static {
        products = new ArrayList<>();
        products.add(new Product(1, "hoa mai", 2000, " creat", "/img/hoamai.jpg"));
        products.add(new Product(2, "hoa hong", 3000, " cool", "/img/hoahong.jpg"));
        products.add(new Product(3, "hoa cuc", 4000, " perfect", "/img/hoacuc.jpg"));
        products.add(new Product(4, "hoa dong tien", 5000, " creat", "/img/dongtien.jpg"));
    }


    @Override
    public ArrayList<Product> getProductList() {
        return products;
    }

    @Override
    public int findById(int id) {
        int index = -1;
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                index = i;
            }
        }
        return index;
    }

    @Override
    public Product getProduct(int id) {
        int index = -1;
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                index = i;
                return products.get(index);
            }
        }
        return null;
    }

    @Override
    public void createProduct(Product product) {
        products.add(product);
    }

    @Override
    public void deleteProduct(Product product) {
        products.remove(product);
    }

    @Override
    public void editProduct(Product product, int id) {
        int index = findById(id);
        products.set(index, product);
    }
}

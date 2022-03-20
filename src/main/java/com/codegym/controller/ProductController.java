package com.codegym.controller;

import com.codegym.model.Product;
import com.codegym.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
@RequestMapping("/products")
public class ProductController {
    @Autowired
    private ProductService productService;

    @GetMapping
    public ModelAndView displayAllProduct() {
        ModelAndView modelAndView = new ModelAndView("list");
        ArrayList<Product> products = productService.getProductList();
        modelAndView.addObject("products", products);
        return modelAndView;
    }

    @GetMapping("/create")
    public ModelAndView showCreateView() {
        ModelAndView modelAndView = new ModelAndView("create");
        return modelAndView;
    }

    @PostMapping("/create")
    public ModelAndView createProduct(int id, String name, float price, String description, String image) {
        ModelAndView modelAndView = new ModelAndView("redirect:/products");
        Product product = new Product(id, name, price, description, image);
        productService.createProduct(product);
        return modelAndView;
    }

    @GetMapping("/delete/{id}")
    public ModelAndView showDeleteView(@PathVariable int id) {
        ModelAndView modelAndView = new ModelAndView("delete");
        Product product = productService.getProduct(id);
        modelAndView.addObject("product", product);
        return modelAndView;
    }

    @PostMapping("/delete/{id}")
    public ModelAndView deleteProduct(@PathVariable int id) {
        ModelAndView modelAndView = new ModelAndView("redirect:/products");
        Product product = productService.getProduct(id);
        productService.deleteProduct(product);
        return modelAndView;
    }

    @GetMapping("/edit/{id}")
    public ModelAndView showEditView(@PathVariable int id) {
        ModelAndView modelAndView = new ModelAndView("edit");
        Product product = productService.getProduct(id);
        modelAndView.addObject("product", product);
        return modelAndView;
    }

    @PostMapping("/edit/{id}")
    private ModelAndView editProduct(@PathVariable int id, String name, float price, String description, String image) {
        Product product = new Product(id, name, price, description, image);
        productService.editProduct(product, id);
        ModelAndView modelAndView = new ModelAndView("redirect:/products");
        return modelAndView;
    }
}

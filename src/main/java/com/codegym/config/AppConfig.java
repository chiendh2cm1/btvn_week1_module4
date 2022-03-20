package com.codegym.config;



import com.codegym.service.Impl.ProductServiceImpl;
import com.codegym.service.ProductService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan("com.codegym")
public class AppConfig extends WebMvcConfigurerAdapter {

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/products/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Bean
    public ProductService productService(){
        return new ProductServiceImpl();
    }
}
package com.nis.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nis.model.CityIndia;
import com.nis.model.Product;



public interface ProductRepository extends JpaRepository<Product,Integer>{
	@Query("FROM Product WHERE productid=?1")
	List<Product> searchById(int pid);
}

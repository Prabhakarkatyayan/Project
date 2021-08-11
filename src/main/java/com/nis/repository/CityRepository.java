package com.nis.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nis.model.CityIndia;

public  interface CityRepository extends JpaRepository<CityIndia,Integer> {
@Query("FROM CityIndia WHERE statename=?1")
List<CityIndia> findCityByState(String statename);
	
	
}

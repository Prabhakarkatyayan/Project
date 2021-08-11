package com.nis.repository;

import org.springframework.data.jpa.repository.JpaRepository;

 
import com.nis.model.StateIndia;

public interface StateRepository extends JpaRepository<StateIndia,Integer> {

}

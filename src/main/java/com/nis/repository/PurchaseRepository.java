package com.nis.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.nis.model.PurchaseRegister;
public interface PurchaseRepository extends JpaRepository<PurchaseRegister,Integer> {

}

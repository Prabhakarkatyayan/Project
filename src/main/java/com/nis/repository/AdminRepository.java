package com.nis.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nis.model.Admin;

public interface AdminRepository extends JpaRepository<Admin,Integer> {
	@Query("FROM Admin WHERE adminId=?1 and password=?2")

	List<Admin> checkAdminLogin(int adminId, String password);
	}

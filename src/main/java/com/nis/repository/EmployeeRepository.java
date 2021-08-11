package com.nis.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nis.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee,Integer> {
@Query("FROM Employee WHERE employeeid=?1 and password=?2")
List<Employee> checkLogin(int employeeid,String password);
}
 
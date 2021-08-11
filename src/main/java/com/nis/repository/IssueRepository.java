package com.nis.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nis.model.IssueRegister;

public interface IssueRepository extends JpaRepository<IssueRegister,Integer> {
@Query("FROM IssueRegister WHERE employeeid=?1")
public List<IssueRegister> reportIssueByEmployee(int employeeid); 
}

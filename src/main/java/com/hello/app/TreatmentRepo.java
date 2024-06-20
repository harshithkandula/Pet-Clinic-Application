package com.hello.app;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface TreatmentRepo extends JpaRepository<Treatment, Integer>{
    
	//@Query(value = "select t from TREATMENT")
	//public Optional<Treatment> getTreatmentDetails(); 
}

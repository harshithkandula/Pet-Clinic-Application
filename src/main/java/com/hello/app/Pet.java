package com.hello.app;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table
public class Pet {

	/*@Id
	@GeneratedValue
	private int id;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}*/
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long pid;
	private String petName;
	private String petOwner;
	private String petType;
	private String petBreed;
	private int petAge;
    private int petWeight;
    
    
	public Pet(long pid, String petName, String petOwner, String petType, String petBreed, int petAge, int petWeight) {
		
		this.pid = pid;
		this.petName = petName;
		this.petOwner = petOwner;
		this.petType = petType;
		this.petBreed = petBreed;
		this.petAge = petAge;
		this.petWeight = petWeight;
	}
	
	
	public Pet() {
		
	}


	public long getPid() {
		return pid;
	}
	public void setPid(long pid) {
		pid+= pid;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetOwner() {
		return petOwner;
	}
	public void setPetOwner(String petOwner) {
		this.petOwner = petOwner;
	}
	public String getPetType() {
		return petType;
	}
	public void setPetType(String petType) {
		this.petType = petType;
	}
	public String getPetBreed() {
		return petBreed;
	}
	public void setPetBreed(String petBreed) {
		this.petBreed = petBreed;
	}
	public int getPetAge() {
		return petAge;
	}
	public void setPetAge(int petAge) {
		this.petAge = petAge;
	}
	public int getPetWeight() {
		return petWeight;
	}
	public void setPetWeight(int petWeight) {
		this.petWeight = petWeight;
	}
	
    

	
	
	
	
}

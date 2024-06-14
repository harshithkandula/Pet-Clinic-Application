package com.hello.app;

import java.util.ArrayList;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table
public class Treatment {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int aid;
	//@Column(insertable=false, updatable=false)
	private long pid;
	private String healthIssue;
	protected String appointmentDate;
	protected String appointmentTime;
	private String prescription;
	private String medicinesPrescribed;
	//ArrayList<String> mp = new ArrayList<String>();
	
	/*@ManyToOne
	@JoinColumn(name = "pid", referencedColumnName="pid")
	private Pet pet;*/
	
	
	public int getAid() {
		return aid;
	}
	public Treatment(int aid, long pid, String healthIssue, String appointmentDate, String appointmentTime,
			String prescription, String medicinesPrescribed) {
		
		this.aid = aid;
		this.pid = pid;
		this.healthIssue = healthIssue;
		this.appointmentDate = appointmentDate;
		this.appointmentTime = appointmentTime;
		this.prescription = prescription;
		this.medicinesPrescribed = medicinesPrescribed;
	}
	
	
	public Treatment() {
		
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	
	
	public long getPid() {
		return pid;
	}
	public void setPid(long pid) {
		this.pid = pid;
	}
	
	public String getHealthIssue() {
		return healthIssue;
	}
	public void setHealthIssue(String healthIssue) {
		this.healthIssue = healthIssue;
	}
	
	public String getAppointmentDate() {
		return appointmentDate;
	}
	public void setAppointmentDate(String appointmentDate) {
		this.appointmentDate = appointmentDate;
	}
	public String getAppointmentTime() {
		return appointmentTime;
	}
	public void setAppointmentTime(String appointmentTime) {
		this.appointmentTime = appointmentTime;
	}
	public String getPrescription() {
		return prescription;
	}
	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}
	public String getMedicinesPrescribed() {
		
		return medicinesPrescribed;
		
	}
	public void setMedicinesPrescribed(String medicinesPrescribed) {
		this.medicinesPrescribed = medicinesPrescribed;
	}
	
	/*public ArrayList<String> getMp() {
		return mp;
	}
	public void setMp(ArrayList<String> mp) {
		this.mp = mp;
	}*/

	
}

package com.hello.app;

public class Joint{
  
	private long pid;
	private int aid;
	private String petName;
	private String petOwner;
	private String petType;
	private String petBreed;
	private int petAge;
    private int petWeight;
    private String healthIssue;
	protected String appointmentDate;
	protected String appointmentTime;
	private String prescription;
	private String medicinesPrescribed;
	public long getPid() {
		return pid;
	}
	public void setPid(long pid) {
		this.pid = pid;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
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
	public Joint(long pid, int aid, String petName, String petOwner, String petType, String petBreed, int petAge,
			int petWeight, String healthIssue, String appointmentDate, String appointmentTime, String prescription,
			String medicinesPrescribed) {
		
		this.pid = pid;
		this.aid = aid;
		this.petName = petName;
		this.petOwner = petOwner;
		this.petType = petType;
		this.petBreed = petBreed;
		this.petAge = petAge;
		this.petWeight = petWeight;
		this.healthIssue = healthIssue;
		this.appointmentDate = appointmentDate;
		this.appointmentTime = appointmentTime;
		this.prescription = prescription;
		this.medicinesPrescribed = medicinesPrescribed;
	}
	
}

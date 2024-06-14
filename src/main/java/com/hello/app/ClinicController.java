package com.hello.app;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ClinicController {

	@Autowired
	PetRepo petRepo;
	
	@Autowired
	TreatmentRepo tr;
	

	@GetMapping("/list")
	public List<Pet> listAllpets(Model model) {

		List<Pet> pets = petRepo.findAll();

		model.addAttribute("pets", pets);

		return pets;
	}
	
	@GetMapping("/book-appoint")
	public String openBookAppointmentForm(Model model) {
		Pet pet =new Pet();
		model.addAttribute("pet", pet);
		System.out.println("Opening Bookappoint.jsp Page");
		return "Bookappoint";
	}
	
	@PostMapping("/book-appoint")
	public String bookAppointment(Model model, @ModelAttribute("pet") Pet pet) {
		
		pet=petRepo.save(pet);
		Optional<Pet> p = petRepo.findById(pet.getPid());
		if(p.isPresent()) {
			
			Pet p1 =p.get();
			
			System.out.println("Pet Details Details:");
			System.out.println(p1.getPid());
			System.out.println(p1.getPetName());
			System.out.println(p1.getPetOwner());
//			System.out.println(t.getAppointmentDate());
//			System.out.println(t.appointmentTime);
		}
		
		model.addAttribute("pet", pet);
		
		
		return "ScheduleAppoint";
	}
	
	@PostMapping("/schedule-appoint")
	public String ScheduleAppointment(Model model, @ModelAttribute("t") Treatment t) {
		t = tr.save(t);
		Pet p = null;
		Optional<Pet> pet = petRepo.findById(t.getPid());
		if(pet.isPresent()) {
			p= pet.get();
		}
		model.addAttribute("p", p);
		model.addAttribute("treat", t);
		return "schedule-success";
	}
	
	@GetMapping("/appoint/{id}")
	public String openTreatmentForm(Model model, @PathVariable int id) {
		Treatment t = null;
		Pet p = null;
		Optional<Treatment> treatment = tr.findById(id);
 		if(treatment.isPresent()) {
 			t = treatment.get();
 		}
 		
 		Optional<Pet> pet = petRepo.findById(t.getPid());
 		if(pet.isPresent()) {
 			p = pet.get();
 		}
 		
 		model.addAttribute("t", t);
 		model.addAttribute("p", p);
		return "treatment-form";
	}
	
	@PostMapping("/appoint/{id}")
	public String TreatmentAccomplished(Model model, @ModelAttribute("t") Treatment t) {
		t = tr.save(t);
		Pet p = null;
		Optional<Pet> pet = petRepo.findById(t.getPid());
		if(pet.isPresent()) {
			p = pet.get();
		}
		model.addAttribute("p", p);
		model.addAttribute("t", t);
		return "generate-prescription";
	}
}

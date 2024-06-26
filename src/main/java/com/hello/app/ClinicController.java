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
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ClinicController {

	@Autowired
	PetRepo petRepo;
	
	@Autowired
	TreatmentRepo tr;
	
	@GetMapping("/home")
	public String openHomePage() {
		return "index";
	}

	@GetMapping("/list")
	public String listAllpets(Model model) {

		List<Pet> pets = petRepo.findAll();

		model.addAttribute("pets", pets);

		return "list-of-pets";
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
	
	@GetMapping("/data-treament-list")
	public String getTreamentData(Model model) {
		List<Joint> tl;
		Pet p;
		Treatment t;
		
		//Joint j1 = new Joint();
		
		return "";
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
	
	@GetMapping("/list-appoints")
	public String getAppointmentsList(Model model) {
		
		List<Treatment> t = tr.findAll();
		//List<Pet> p = petRepo.findById();
		/*Optional<Pet> p = java.util.Optional.empty();
		for(Treatment x: t) {
			 p = petRepo.findById(x.getPid());
		}
		
		Pet pd = null;
		if(p.isPresent()) {
			pd = p.get();
			
		}
		//model.addAttribute("p", pd);*/
		model.addAttribute("t", t);
		
		return "list-of-treatments";
	}
	
	@GetMapping("/searchById")
	public String openSearchAppointmentByIdForm(Model model) {
		
		List<Treatment> tmtL = tr.findAll();
		
		model.addAttribute("tmt", tmtL);
		
		return "searchpscpbyID";
	}
	
	@PostMapping("/data-appoint")
	public String getPrescription(Model model, @RequestParam int id) {
		
		Treatment t = null;
		Pet p = null;
		Optional<Treatment> tmt = tr.findById(id);
		if(tmt.isPresent()) {
			t = tmt.get();
		}
		
		Optional<Pet> pt = petRepo.findById(t.getPid());
		if(pt.isPresent()) {
			p = pt.get();
		}
		
		model.addAttribute("t", t);
		model.addAttribute("p", p);
		return "generate-prescription";
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

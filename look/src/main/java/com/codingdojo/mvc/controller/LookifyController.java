package com.codingdojo.mvc.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.mvc.model.Lookify;

import com.codingdojo.mvc.services.LookifyService;




@Controller
public class LookifyController {
	//dependency injection 
	@Autowired
	LookifyService lookifyService;
	
	//main page
	@RequestMapping("")
	public String welcompage() {
		
		return "index.jsp";
	}
	
	
	//rendering information of the all songs in table
		@RequestMapping("/dashboard")
		public String all(Model model) {
			List<Lookify> all=lookifyService.getAllLookify();
			model.addAttribute("all", all);
			return "dashboard.jsp";
		}
		
	//rendering information in separate page 
		@RequestMapping("/songs/{id}")
		public String song(Model model,@PathVariable("id") Long id) {
			Lookify look=lookifyService.findLookify(id);
			model.addAttribute("look", look);
			return "song.jsp";
		}
		
	
	
	//create the look
	@RequestMapping("/songs/new")
	public String createNew(@ModelAttribute("lookify") Lookify lookify) {
		
		return "new.jsp";
	}
	@RequestMapping(value="/songs/new", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("lookify") Lookify lookify, BindingResult result) {  // for Error checking i use @valid 
        if (result.hasErrors()) {
           return "new.jsp";
        } else {
        	lookifyService.createLookify(lookify);
            return "redirect:/dashboard";
        }
    }

	
	//edit
	@RequestMapping("/song/{id}/edit")
	public String edit(@PathVariable("id") Long id, Model model) {
		Lookify look = lookifyService.findLookify(id);
	    model.addAttribute("look", look);
	    return "edit.jsp";
	}
	
	
	//updating
	@RequestMapping(value="/song/{id}/edit", method=RequestMethod.PUT)
	public String update(@PathVariable("id") Long id,@Valid @ModelAttribute("lookify") Lookify lookify, BindingResult result) {
	    if (result.hasErrors()) {
	        return "edit.jsp";
	    } else {
	    	lookifyService.updateLookify(id,lookify);
	        return "redirect:/dashboard";
	    }
	}
	 //delete
	
	@RequestMapping(value="/song/{id}/delete")
	public String destroy(@PathVariable("id") Long id) {
		lookifyService.deleteLookify(id);
	    return "redirect:/dashboard";
	}
	
//	//search
//	@RequestMapping(value="/search/{artist}")
//	public String search(Model model,@PathVariable("artist") String artist) {
//		List<Lookify> look=lookifyService.findbyname(artist);
//		model.addAttribute("look", look);
//		return "search.jsp";
//	}
//		 
	// search
		@GetMapping("/search/{artist}")
		public String searchByArtist(@PathVariable("artist") String artist, Model model) {
			List<Lookify> look = lookifyService.findbyname(artist);
			model.addAttribute("look", look);
			model.addAttribute("artist", artist);
			return "search.jsp";
		}
		
		@GetMapping("/search")
		public String search(@RequestParam(value="artist", required=false) String artist) {
			String redirect="redirect:/search/"+ artist;
			return redirect;
		}
		
		

	}





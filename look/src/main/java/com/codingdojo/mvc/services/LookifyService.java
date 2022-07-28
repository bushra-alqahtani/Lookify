package com.codingdojo.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.mvc.model.Lookify;
import com.codingdojo.mvc.repository.LookifyRepository;



@Service
public class LookifyService {

	
	// adding the look repository as a dependency
		private final LookifyRepository lookifyRepository;
		
		public LookifyService(LookifyRepository lookifyRepository) {
			this.lookifyRepository=lookifyRepository;
		}
		
		// returns all the Look
		
		public List<Lookify> getAllLookify(){
			return lookifyRepository.findAll();
		}
		
		// creates a Look
	    public Lookify createLookify(Lookify b) {
	        return lookifyRepository.save(b);
	    }
	    
	  //get Look by id 
	    public Optional<Lookify> getLookifyById(Long id) {
	    	return lookifyRepository.findById(id);
	    }
	    
	
	   
	    
	 // retrieves a Look
	    public Lookify findLookify(Long id) {
	       Optional<Lookify> optional = lookifyRepository.findById(id);
	        if(optional.isPresent()) {
	           return optional.get();
	        } else {
	            return null;
	        }
	    }
	    
	    
	    
		
	    
	 // update Look
	    public Lookify updateLookify(Long id,Lookify b) {
	    	Optional<Lookify> obtional=lookifyRepository.findById(id);
	    	if(obtional.isPresent()) {
	    		Lookify look =obtional.get();
	    		look.setName(b.getName());
	    		look.setArtist(b.getArtist());
	    		look.setRating(b.getRating());
	    		lookifyRepository.save(look);
	    	}
	    	return null; 
	    }
		
		
	 //delete
	    
	    public boolean deleteLookify(Long id) {
	    	Lookify remove = findLookify(id);
	    	if(remove==null) {
	    		return false;
	    		}
	    	lookifyRepository.delete(remove);
	    	return true;
	    }

	    public List<Lookify> findbyname(String artist) {
			return lookifyRepository.findAllByArtist(artist);
		}
		}



package com.codingdojo.mvc.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;

import com.codingdojo.mvc.model.Lookify;

@Repository
public interface LookifyRepository extends CrudRepository<Lookify,Long> {
	List<Lookify> findAll();

	// this method finds books with descriptions containing the search string
    
    List<Lookify> findAllByArtist(String artist);
}	
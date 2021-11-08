package com.edutecno.prueba.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edutecno.prueba.models.Rating;
import com.edutecno.prueba.repositories.RatingRepository;

@Service
public class RatingService {

	@Autowired
	private RatingRepository ratingRepository;
	
	public List<Rating> findAllRatings() {
		return ratingRepository.findAll();
	}
	
	public Rating findRatingById(Long id) {
		return ratingRepository.findById(id).orElse(null);
	}
	
	public void addRating(Rating rating) {
		ratingRepository.save(rating);
	}
}

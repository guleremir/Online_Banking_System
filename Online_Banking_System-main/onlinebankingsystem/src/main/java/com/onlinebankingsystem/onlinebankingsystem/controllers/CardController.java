package com.onlinebankingsystem.onlinebankingsystem.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.onlinebankingsystem.onlinebankingsystem.models.Card;
import com.onlinebankingsystem.onlinebankingsystem.services.CardService;

@RestController
public class CardController {

	@Autowired
	private CardService cardService;
	
	 @GetMapping("/card")
	 public List<Card> getCards(){
			return cardService.getAllCards();
	 }
 
	 @GetMapping("/card/{id}")
	 public Card getCardById(Integer id) {
		  return cardService.getCardById(id);
	 }
}

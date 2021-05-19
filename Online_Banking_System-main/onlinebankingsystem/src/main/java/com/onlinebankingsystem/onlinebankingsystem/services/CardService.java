package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinebankingsystem.onlinebankingsystem.models.Card;
import com.onlinebankingsystem.onlinebankingsystem.repositories.ICardRepository;

@Service
public class CardService implements ICardService {
	
	@Autowired
	private ICardRepository cardRepository;

	public CardService(ICardRepository cardRepository) {
		super();
		this.cardRepository = cardRepository;
	}

	@Override
	public List<Card> getAllCards() {
		// TODO Auto-generated method stub
		return cardRepository.findAll();
	}

	@Override
	public Card getCardById(Integer id) {
		// TODO Auto-generated method stub
		Optional<Card> optionalCard = cardRepository.findById(id);
		Card card = null;
		if(optionalCard.isPresent()) {
			card = optionalCard.get();
		}
		else {
			throw new RuntimeException("Admin not found for id id: " + id);
		}
		return card;
	}
}

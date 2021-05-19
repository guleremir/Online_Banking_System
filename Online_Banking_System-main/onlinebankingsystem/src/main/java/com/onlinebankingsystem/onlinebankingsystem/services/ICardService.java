package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;

import com.onlinebankingsystem.onlinebankingsystem.models.Card;

public interface ICardService {
	List<Card> getAllCards();
	Card getCardById(Integer id);
}

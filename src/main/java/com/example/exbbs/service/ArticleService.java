package com.example.exbbs.service;

import java.util.List;
import com.example.exbbs.domain.Article;
import com.example.exbbs.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleService {

	@Autowired
	private ArticleRepository repository;

	public List<Article> findAll() {
		return repository.findAll();
	}

	public void insert(Article article) {
		repository.insert(article);
	}

	public void deleteById(int id) {
		repository.deleteById(id);
	}
}
package service;

import dao.AuthorRepository;
import entity.Author;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorService {
    @Autowired
    AuthorRepository authorRepository;

    public Author findById(Integer id) {
        return authorRepository.findOne(id);
    }

    public List<Author> findAll() {
        return (List<Author>) authorRepository.findAll();
    }

    public void save(Author author) {
        authorRepository.save(author);
    }

    public void delete(Integer id) {
        authorRepository.delete(id);
    }
}
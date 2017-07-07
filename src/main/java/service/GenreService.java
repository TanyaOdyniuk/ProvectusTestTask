package service;

import dao.GenreRepository;
import entity.Genre;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GenreService {
    @Autowired
    GenreRepository genreRepository;

    public Genre findById(Integer id) {
        return genreRepository.findOne(id);
    }

    public List<Genre> findAll() {
        return (List<Genre>) genreRepository.findAll();
    }

    public void save(Genre genre) {
        genreRepository.save(genre);
    }

    public void delete(Integer id) {
        genreRepository.delete(id);
    }

}

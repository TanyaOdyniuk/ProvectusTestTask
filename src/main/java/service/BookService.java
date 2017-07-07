package service;

import dao.BookRepository;
import entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    @Autowired
    BookRepository bookRepository;

    public Book findById(Integer id) {
        return bookRepository.findOne(id);
    }

    public List<Book> findAll() {
        return (List<Book>) bookRepository.findAll();
    }

    public void save(Book book) {
        bookRepository.save(book);
    }

    public void delete(Integer id) {
        bookRepository.delete(id);
    }

}

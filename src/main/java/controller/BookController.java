package controller;

import entity.Author;
import entity.Book;
import entity.Genre;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import service.AuthorService;
import service.BookService;
import service.GenreService;
import util.Utils;

@Controller
@RequestMapping("provectusTestTask/book")
public class BookController {

    @Autowired
    BookService bookService;

    @Autowired
    AuthorService authorService;

    @Autowired
    GenreService genreService;


    @GetMapping("/admin")
    public String getBooks(Model model) {
        model.addAttribute("books", bookService.findAll());
        return "books";
    }

    @GetMapping("/{id}")
    public String getBook(Model model, @PathVariable Integer id) {
        model.addAttribute("book", bookService.findById(id));
        return "book";
    }

    @GetMapping("/admin/new")
    public String newBook() {
        return "newBook";
    }

    @PostMapping("/admin")
    public String createBook(Book book) {
        bookService.save(book);
        return "redirect:admin/edit/" + book.getId();
    }

    @GetMapping("/admin/delete/{id}")
    public String deleteBook(@PathVariable Integer id) {
        bookService.delete(id);
        return "redirect:provectusTestTask/book";
    }

    @GetMapping("/admin/edit/{id}")
    public String editAuthor(Model model, @PathVariable Integer id){
        Book book = bookService.findById(id);
        model.addAttribute("book", book);
        model.addAttribute("availableAuthors", Utils.removeSubList(authorService.findAll(), book.getAuthors()));
        model.addAttribute("availableGenres", Utils.removeSubList(genreService.findAll(), book.getGenres()));
        return "editBook";
    }

    @PostMapping("/admin/edit")
    public String updateBook(@RequestParam(name = "id") Integer id, Book editedBook) {
        Book book = bookService.findById(id);
        book.setName(editedBook.getName());
        book.setDescription(editedBook.getDescription());
        book.setPrice(editedBook.getPrice());
        bookService.save(book);
        return "redirect:edit/" + id;
    }

    @GetMapping("/admin/removeAuthor/{authorId}/{bookId}")
    public  String deleteAuthor(@PathVariable Integer authorId, @PathVariable Integer bookId) {
        Author author = authorService.findById(authorId);
        Book book = bookService.findById(bookId);
        book.getAuthors().remove(author);
        bookService.save(book);
        return "redirect:/provectusTestTask/book/admin/edit/" + bookId;
    }

    @GetMapping("/admin/removeGenre/{genreId}/{bookId}")
    public  String deleteGenre(@PathVariable Integer genreId, @PathVariable Integer bookId) {
        Genre genre= genreService.findById(genreId);
        Book book = bookService.findById(bookId);
        book.getGenres().remove(genre);
        bookService.save(book);
        return "redirect:/provectusTestTask/book/admin/edit/" + bookId;
    }

    @GetMapping("/admin/addAuthor/{bookId}")
    public  String addAuthor(@RequestParam(name="authors") Integer[] authorIds, @PathVariable Integer bookId) {
        Book book= bookService.findById(bookId);
        for(int i = 0; i < authorIds.length; i++){
            book.getAuthors().add(authorService.findById(authorIds[i]));
        }
        bookService.save(book);
        return "redirect:/provectusTestTask/book/admin/edit/" + bookId;
    }

    @GetMapping("/admin/addGenre/{bookId}")
    public  String addGenre(@RequestParam(name="genres") Integer[] genreIds, @PathVariable Integer bookId) {
        Book book= bookService.findById(bookId);
        for(int i = 0; i < genreIds.length; i++){
            book.getGenres().add(genreService.findById(genreIds[i]));
        }
        bookService.save(book);
        return "redirect:/provectusTestTask/book/admin/edit/" + bookId;
    }
}

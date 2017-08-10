package controller;

import entity.Book;
import entity.Genre;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import service.BookService;
import service.GenreService;

import java.util.List;

@Controller
@RequestMapping("provectusTestTask/genre")
public class GenreController {

    @Autowired
    GenreService genreService;

    @Autowired
    BookService bookService;

    @GetMapping("/admin")
    public String getGenres(Model model) {
        model.addAttribute("genres", genreService.findAll());
        return "genres";
    }

    @GetMapping("/{id}")
    public String getGenre(Model model, @PathVariable Integer id) {
        model.addAttribute("genre", genreService.findById(id));
        return "genre";
    }

    @GetMapping("/admin/new")
    public String newGenre(){
        return "newGenre";
    }

    @PostMapping("/admin")
    public String createGenre(Genre genre) {
        genreService.save(genre);
        return "redirect:admin/edit/"+ genre.getId();
    }
    @GetMapping("/admin/delete/{id}")
    public String deleteGenre(@PathVariable Integer id){
        genreService.delete(id);
        return "redirect:/genre";
    }

    @GetMapping("/admin/edit/{id}")
    public String editAuthor(Model model, @PathVariable Integer id){
        Genre genre = genreService.findById(id);
        model.addAttribute("genre", genre);
        List<Book> availableBooks = bookService.findAll();
        availableBooks.removeAll(genre.getBooks());
        model.addAttribute("availableBooks", availableBooks);
        return "editGenre";
    }

    @PostMapping("/admin/edit")
    public String updateAuthor(@RequestParam(name = "id") Integer id, Genre editedGenre) {
        Genre genre = genreService.findById(id);
        genre.setName(editedGenre.getName());
        genreService.save(genre);
        return "redirect:edit/" + id;
    }

    @GetMapping("/admin/removeBook/{bookId}/{genreId}")
    public  String deleteBook(@PathVariable Integer bookId, @PathVariable Integer genreId) {
        Genre genre = genreService.findById(genreId);
        Book book = bookService.findById(bookId);
        genre.getBooks().remove(book);
        genreService.save(genre);
        return "redirect:/provectusTestTask/genre/admin/edit/" + genreId;
    }

    @GetMapping("/admin/addBook/{genreId}")
    public  String addBook(@RequestParam(name="books") Integer[] bookIds, @PathVariable Integer genreId) {
        Genre genre = genreService.findById(genreId);
        for(int i = 0; i < bookIds.length; i++){
            genre.getBooks().add(bookService.findById(bookIds[i]));
        }
        genreService.save(genre);
        return "redirect:/provectusTestTask/genre/admin/edit/" + genreId;
    }

}

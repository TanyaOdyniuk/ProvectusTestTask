package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import service.AuthorService;
import service.BookService;
import service.GenreService;

@Controller
@RequestMapping("/provectusTestTask")
public class AppController {
    @Autowired
    GenreService genreService;
    @Autowired
    AuthorService authorService;
    @Autowired
    BookService bookService;

    @GetMapping
    public String showMainPage(Model model) {
        model.addAttribute("genres", genreService.findAll());
        model.addAttribute("authors", authorService.findAll());
        model.addAttribute("books", bookService.findAll());
        return "mainPage";
    }

}

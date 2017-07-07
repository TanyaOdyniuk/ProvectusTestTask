package controller;

import entity.Author;
import entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import service.AuthorService;
import service.BookService;
import util.Utils;

@Controller
@RequestMapping("provectusTestTask/author")
public class AuthorController {

    @Autowired
    AuthorService authorService;

    @Autowired
    BookService bookService;

    @GetMapping("/admin")
    public String getAuthors(Model model) {
        model.addAttribute("authors", authorService.findAll());
        return "authors";
    }

    @GetMapping("/{id}")
    public String getAuthor(Model model, @PathVariable Integer id) {
        model.addAttribute("author", authorService.findById(id));
        return "author";
    }

    @GetMapping("/admin/new")
    public String newAuthor() {
        return "newAuthor";
    }

    @PostMapping("/admin")
    public String createAuthor(Author author) {
        authorService.save(author);
        return "redirect:admin/edit/" + author.getId();
    }

    @GetMapping("/admin/delete/{id}")
    public  String deleteAuthor(@PathVariable Integer id) {
        authorService.delete(id);
        return "redirect:/author";
    }

    @GetMapping("/admin/edit/{id}")
    public String editAuthor(Model model, @PathVariable Integer id){
        Author author = authorService.findById(id);
        model.addAttribute("author", author);
        model.addAttribute("availableBooks", Utils.removeSubList(bookService.findAll(), author.getBooks()));
        return "editAuthor";
    }

    @PostMapping("/admin/edit")
    public String updateAuthor(@RequestParam(name = "id") Integer id, Author editedAuthor) {
        Author author = authorService.findById(id);
        author.setName(editedAuthor.getName());
        author.setLastname(editedAuthor.getLastname());
        authorService.save(author);
        return "redirect:edit/" + id;
    }

    @GetMapping("/admin/removeBook/{bookId}/{authorId}")
    public  String deleteBook(@PathVariable Integer bookId, @PathVariable Integer authorId) {
        Author author = authorService.findById(authorId);
        Book book = bookService.findById(bookId);
        author.getBooks().remove(book);
        authorService.save(author);
        return "redirect:/provectusTestTask/author/admin/edit/" + authorId;
    }

    @GetMapping("/admin/addBook/{authorId}")
    public  String addBook(@RequestParam(name="books") Integer[] bookIds, @PathVariable Integer authorId) {
        Author author = authorService.findById(authorId);
        for(int i = 0; i < bookIds.length; i++){
            author.getBooks().add(bookService.findById(bookIds[i]));
        }
        authorService.save(author);
        return "redirect:/provectusTestTask/author/admin/edit/" + authorId;
    }
}

package controller;

import entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import service.BookService;
import service.OrderService;

@Controller
@RequestMapping("provectusTestTask/order")
public class OrderController {

    @Autowired
    OrderService orderService;
    @Autowired
    BookService bookService;

    @GetMapping
    public String getOrders(Model model) {
        model.addAttribute("orders", orderService.findAll());
        return "orders";
    }

    @GetMapping("/{id}")
    public String getOrder(Model model, @PathVariable Integer id){
        model.addAttribute("order", orderService.findById(id));
        return "order";
    }

    @GetMapping("/new")
    public String newOrder() {
        return "newOrder";
    }


    @PostMapping
    public String createOrder(@RequestParam(name="book_id") Integer bookId, Order order) {
        order.setBook(bookService.findById(bookId));
        orderService.save(order);
        return "redirect:/provectusTestTask/book/" + bookId;
    }

    @GetMapping("/delete/{id}")
    public String deleteOrder(@PathVariable Integer id){
        orderService.delete(id);
        return "redirect:/provectusTestTask/order";
    }

}

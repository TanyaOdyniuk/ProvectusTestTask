package service;

import dao.OrderRepository;
import entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    OrderRepository orderRepository;

    public Order findById(Integer id) {
        return orderRepository.findOne(id);
    }

    public List<Order> findAll() {
        return (List<Order>) orderRepository.findAll();
    }

    public void save(Order order) {
        orderRepository.save(order);
    }

    public void delete(Integer id) {
        orderRepository.delete(id);
    }
}

package entity;

import javax.persistence.*;

@Entity
@Table(name = "bookOrder")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="order_id")
    private Integer id;
    private String customerFirstname;
    private String customerLastname;
    private String address;
    @OneToOne
    @JoinColumn(name="book_id")
    private Book book;
    private Integer bookCount;

    public Order() {
    }

    public Order(String customerFirstname, String customerLastname, String address, Book book, Integer bookCount) {
        this.customerFirstname = customerFirstname;
        this.customerLastname = customerLastname;
        this.address = address;
        this.book = book;
        this.bookCount = bookCount;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomerFirstname() {
        return customerFirstname;
    }

    public void setCustomerFirstname(String customerFirstname) {
        this.customerFirstname = customerFirstname;
    }

    public String getCustomerLastname() {
        return customerLastname;
    }

    public void setCustomerLastname(String customerLastname) {
        this.customerLastname = customerLastname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Integer getBookCount() {
        return bookCount;
    }

    public void setBookCount(Integer bookCount) {
        this.bookCount = bookCount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Order order = (Order) o;

        if (!getId().equals(order.getId())) return false;
        if (getCustomerFirstname() != null ? !getCustomerFirstname().equals(order.getCustomerFirstname()) : order.getCustomerFirstname() != null)
            return false;
        if (getCustomerLastname() != null ? !getCustomerLastname().equals(order.getCustomerLastname()) : order.getCustomerLastname() != null)
            return false;
        if (getAddress() != null ? !getAddress().equals(order.getAddress()) : order.getAddress() != null) return false;
        return getBookCount() != null ? getBookCount().equals(order.getBookCount()) : order.getBookCount() == null;
    }

    @Override
    public int hashCode() {
        int result = getId().hashCode();
        result = 31 * result + (getCustomerFirstname() != null ? getCustomerFirstname().hashCode() : 0);
        result = 31 * result + (getCustomerLastname() != null ? getCustomerLastname().hashCode() : 0);
        result = 31 * result + (getAddress() != null ? getAddress().hashCode() : 0);
        result = 31 * result + (getBookCount() != null ? getBookCount().hashCode() : 0);
        return result;
    }
}

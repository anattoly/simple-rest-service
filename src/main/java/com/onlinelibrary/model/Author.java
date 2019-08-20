package com.onlinelibrary.model;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Author {
    private Integer id;
    private String firstName;
    private String lastName;
    private List<Book> book;

    public Author(Integer id, String firstName, String lastName, List<Book> book) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.book = new ArrayList<>(book);
    }

    public void setBook(Book book) {
        this.book.add(book);
    }
}

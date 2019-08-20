package com.onlinelibrary.repository;

import com.onlinelibrary.model.Book;
import com.onlinelibrary.model.Genre;
import org.springframework.stereotype.Repository;

import java.util.*;
import java.util.stream.Collectors;

@Repository
public class BookRepositoryImpl implements BookRepository {

    private final List<Book> BOOKS;

    BookRepositoryImpl() {
        BOOKS = new ArrayList<>();
        BOOKS.add(new Book(1, "My Book", Genre.CLASSICS, "Description", 5F));
    }

    @Override
    public List<Book> createBook(Book book) {
        BOOKS.add(book);
        return BOOKS;
    }

    @Override
    public List<Book> deleteBookById(Integer bookId) {
        BOOKS.removeIf(b -> Objects.equals(b.getIdBook(), bookId));
        return BOOKS;
    }

    @Override
    public List<Book> filteredByGenre(Genre genre) {
        return BOOKS.stream()
                .filter(b -> b.getGenre().equals(genre))
                .collect(Collectors.toList());
    }

    @Override
    public List<Book> updateBookById(Integer bookId, Book book) {
        BOOKS.removeIf(b -> Objects.equals(b.getIdBook(), bookId));
        BOOKS.add(book);
        return BOOKS;
    }
}

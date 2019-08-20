package com.onlinelibrary.repository;

import com.onlinelibrary.model.Book;
import com.onlinelibrary.model.Genre;

import java.util.List;

public interface BookRepository {
    List<Book> createBook(Book book);

    List<Book> deleteBookById(Integer bookId);

    List<Book> filteredByGenre(Genre genre);

    List<Book> updateBookById(Integer bookId, Book book);


}

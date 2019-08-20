package com.onlinelibrary.repository;

import com.onlinelibrary.model.Author;
import com.onlinelibrary.model.Book;

import java.util.List;

public interface AuthorRepository {
    List<Author> createAuthor(Author author);

    List<Author> deleteAuthorById(Integer idAuthor);

    void addBookToAuthor(Integer authorId, Book book);

    List<Author> updateAuthorById(Integer idAuthor, Author author);

    List<Book> filteredByAuthor(Integer idAuthor);

    List<Author> findAll();
}

package com.onlinelibrary.repository;

import com.onlinelibrary.model.Author;
import com.onlinelibrary.model.Book;
import com.onlinelibrary.model.Genre;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Repository
public class AuthorRepositoryImpl implements AuthorRepository {

    private final List<Author> AUTHORS;

    AuthorRepositoryImpl() {
        AUTHORS = new ArrayList<>();
        AUTHORS.add(new Author(1, "Anattoly", "Kovalenko",
                List.of(new Book(1, "TestBook", Genre.CLASSICS, "Test Author Book", 5F))));
    }

    @Override
    public List<Author> createAuthor(Author author) {
        AUTHORS.add(author);
        return AUTHORS;
    }

    @Override
    public List<Author> deleteAuthorById(Integer idAuthor) {
        AUTHORS.removeIf(a -> a.getId().equals(idAuthor));
        return AUTHORS;
    }

    @Override
    public void addBookToAuthor(Integer id, Book book) {
        AUTHORS.stream()
                .filter(author -> author.getId().equals(id))
                .findAny()
                .orElseThrow(() -> new RuntimeException("Book not found"))
                .setBook(book);
    }

    @Override
    public List<Author> updateAuthorById(Integer idAuthor, Author author) {
        AUTHORS.removeIf(a -> a.getId().equals(idAuthor));
        AUTHORS.add(author);
        return AUTHORS;
    }

    @Override
    public List<Book> filteredByAuthor(Integer id) {
        return AUTHORS.stream()
                .filter(author -> author.getId().equals(id))
                .flatMap(b -> b.getBook().stream())
                .collect(Collectors.toList());
    }

    @Override
    public List<Author> findAll() {
        return new ArrayList<>(AUTHORS);
    }
}

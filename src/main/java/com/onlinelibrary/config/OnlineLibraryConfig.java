package com.onlinelibrary.config;

import com.onlinelibrary.repository.AuthorRepository;
import com.onlinelibrary.repository.BookRepository;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("com.onlinelibrary.repository")
public class OnlineLibraryConfig {

    private final AuthorRepository authorRepository;
    private final BookRepository bookRepository;

    public OnlineLibraryConfig(AuthorRepository authorRepository, BookRepository bookRepository) {
        this.authorRepository = authorRepository;
        this.bookRepository = bookRepository;
    }
}

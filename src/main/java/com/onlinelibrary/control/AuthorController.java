package com.onlinelibrary.control;

import com.onlinelibrary.model.Author;
import com.onlinelibrary.model.Book;
import com.onlinelibrary.repository.AuthorRepositoryImpl;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("library/author")
public class AuthorController {

    private final AuthorRepositoryImpl authorRepository;

    public AuthorController(AuthorRepositoryImpl authorRepository) {
        this.authorRepository = authorRepository;
    }

    @PostMapping("/add")
    public List<Author> createAuthor(@RequestBody Author author){
        return authorRepository.createAuthor(author);
    }

    @PutMapping("/addBook")
    public Map<Integer, Book> addBookToAuthor(@RequestParam Integer id, @RequestBody Book book) {
        Map<Integer, Book> authorBookMap = new HashMap<>();
        authorRepository.addBookToAuthor(id, book);
        authorBookMap.put(id, book);
        return authorBookMap;
    }

    @PostMapping("/update")
    public List<Author> updateAuthorById(@RequestParam Integer id, @RequestBody Author author) {
        return authorRepository.updateAuthorById(id, author);
    }

    @DeleteMapping("/delete")
    public List<Author> deleteAuthorToId(@RequestParam Integer id) {
        return authorRepository.deleteAuthorById(id);
    }

    @PostMapping("/filter")
    public List<Book> filteredBookByAuthor(@RequestParam Integer id) {
        return authorRepository.filteredByAuthor(id);
    }

    @GetMapping("/all")
    public List<Author> allAuthors() {
        return authorRepository.findAll();
    }
}

package com.onlinelibrary.control;

import com.onlinelibrary.model.Book;
import com.onlinelibrary.model.Genre;
import com.onlinelibrary.repository.BookRepositoryImpl;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("library/book")
public class BookController {

    private final BookRepositoryImpl bookRepository;

    public BookController(BookRepositoryImpl bookRepository) {
        this.bookRepository = bookRepository;
    }

    @PostMapping("/add")
    public List<Book> createBook(@RequestBody Book book){
        return bookRepository.createBook(book);
    }

    @PostMapping("/update")
    public List<Book> updateBookById(@RequestParam Integer id, @RequestBody Book book) {
        return bookRepository.updateBookById(id, book);
    }

    @DeleteMapping("/delete")
    public List<Book> deleteBookToId(@RequestParam Integer id) {
        return bookRepository.deleteBookById(id);
    }

    @PostMapping("/filter")
    public List<Book> filteredBookByGenre(@RequestParam Genre genre) {
        return bookRepository.filteredByGenre(genre);
    }
}

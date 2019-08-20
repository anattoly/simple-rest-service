package com.onlinelibrary.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {
    private Integer idBook;
    private String title;
    private Genre genre;
    private String description;
    private Float rate;
}

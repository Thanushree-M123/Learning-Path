package com.library;

public class BookService {
    private BookRepository bookRepository;
    private String libraryName;

    public BookService(String libraryName) {
        this.libraryName = libraryName;
    }

    public void setBookRepository(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public void printBookDetails() {
        System.out.println("Library: " + libraryName);
        System.out.println("Book Title: " + bookRepository.getBookTitle());
    }
}

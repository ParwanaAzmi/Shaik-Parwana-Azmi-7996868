class Book {
    String title;
    Book(String bookTitle) {
        title = bookTitle;
    }
}
public class BookDemo {
    public static void main(String[] args) {
        Book myBook = new Book("Java Basics"); 
        System.out.println(myBook.title);
    }
}
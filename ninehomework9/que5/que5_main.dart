import 'book_class.dart';

void main() {
  Book book1 = Book();
  book1.title = 'hello world';
  book1.pages = 150;
  print(book1.title);
  print(book1.readingTime);
}

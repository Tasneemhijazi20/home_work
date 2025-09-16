/*Q5 
Create a class Book with private fields _title and _pages. 
- Add setters: reject empty titles and pages ≤ 0. 
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page. 
- In main(), create a book, print its title and estimated reading time.  */
class Book {
  String? _title;
  int? _pages;
  set pages(int pages) {
    if (pages >= 0) {
      this._pages = pages;
    }
  }

  set title(String title) {
    if (title.isNotEmpty) {
      this._title = title;
    }
  }

  String? get title => this._title;
  double get readingTime => this._pages! * (2 / 60);
}

class Member {
  String name;
  String memberid;

  Member(this.name, this.memberid);
}

class Book {
  String title;
  String authr;
  String isbn;
  bool isAvailable;

  Book(this.title, this.authr, this.isbn, this.isAvailable);
}

class Loan {
  Book book;
  Member menber;
  DateTime loanDate;
  DateTime? returnDate;

  Loan(this.book, this.menber, this.loanDate, [this.returnDate]);

  void returnDay() {
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}

class Library {
  List<Book> books = [];
  List<Loan> loans = [];

  void loansbook(Book book, Member member) {
    if (book.isAvailable) {
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime.now()));
    } else {
      print('${book.title} is not avaliable');
    }
  }

  void listBook() {
    for (var element in books) {
      print(
          "${element.title}: ${element.authr}: ${element.isbn}: ${element.isAvailable}");
    }
  }

  void addBook(Book book) {
    books.add(book);
  }

  void listloanbook() {
    for (var element in loans) {
      print('${element.book.title}: ${element.menber.name}');
    }
  }
}

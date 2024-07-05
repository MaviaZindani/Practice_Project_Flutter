import 'library.dart';

void main() {
  Book book1 = Book('Asmaskitchen', 'maviazaindani', '34213151', true);
  Book book2 = Book('patoo', 'ali', '34213151', true);
  Book book3 = Book('kabar', 'hamza', '34213151', true);
  Book book4 = Book('cow bakra', 'maazzaindani', '34213151', true);

  Member member1 = Member("Noman", '6990');

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);
  library.addBook(book4);

  library.loansbook(book1, member1);

  library.listBook();
  print('----------------------------');
  library.listloanbook();
}

// class Student {
//   String? Name;
//   String? FatherName;
//   int? Age;
//   int? StudentId;

//   Student({this.Age, this.Name, this.FatherName, this.StudentId});

//   void display() {
//     print("$Age,$FatherName,$StudentId,$Name");
//   }
// }

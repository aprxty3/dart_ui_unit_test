import 'package:dart_ui_unit_test/book.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main() {
  group(
    'Book Service',
    () {
      var bookRepo =
          MockBookRepository(); //If Use This, the mocking could be success
      var bookRepos =
          BookRepository(); //If Use This, the mocking could be error
      var bookSevice = BookService(bookRepo);

      test(
        'save new book must success',
        () {
          bookSevice.save('1', 'Tutor', 100);
          verify(bookRepo.save(Book('1', 'Tutor', 100))).called(1);
        },
      );
    },
  );
}

@Retry(5)
import 'package:test/test.dart';

void main() {
  test(
    'test failed',
    () => expect(1, 2),
  );
}

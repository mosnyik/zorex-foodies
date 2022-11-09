import 'package:test/test.dart';
import 'package:foodapp/screens/example.dart';

void main() {
  group(Counter, () {
    test('value start at 0', () {
      expect(Counter().value, 0);
    });
    test('value should be increamented', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });
    test('value should be decreamented', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}

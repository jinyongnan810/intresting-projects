// import 'package:flutter_test/flutter_test.dart';

// import 'package:fwitter_shared/fwitter_shared.dart';

// class Data {
//   const Data(this.id, this.body);
//   final int id;
//   final String body;

//   @override
//   String toString() {
//     return 'Data{id: $id, body: $body}';
//   }

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Data &&
//           runtimeType == other.runtimeType &&
//           id == other.id &&
//           body == other.body;

//   @override
//   int get hashCode => Object.hash(id, body);
// }

// class DataFilter extends Filter<Data> {
//   DataFilter._({
//     this.idGreaterThan,
//     this.idLessThan,
//     this.bodyContains,
//   });

//   factory DataFilter.idGreaterThan(int id) => DataFilter._(idGreaterThan: id);
//   factory DataFilter.idLessThan(int id) => DataFilter._(idLessThan: id);
//   factory DataFilter.bodyContains(String body) =>
//       DataFilter._(bodyContains: body);

//   final int? idGreaterThan;
//   final int? idLessThan;
//   final String? bodyContains;

//   @override
//   bool apply(Data obj) {
//     if (idGreaterThan != null && obj.id <= idGreaterThan!) {
//       return false;
//     }
//     if (idLessThan != null && obj.id >= idLessThan!) {
//       return false;
//     }
//     if (bodyContains != null && !obj.body.contains(bodyContains!)) {
//       return false;
//     }
//     return true;
//   }
// }

// void main() {
//   const one = Data(1, 'one');
//   const two = Data(2, 'two');
//   const three = Data(3, 'three');
//   const four = Data(4, 'four');
//   const data = [one, two, three, four];

//   group('ComboFilter tests', () {
//     test('and filter', () {
//       final filter = PostFilter.and([
//         DataFilter.idGreaterThan(1),
//         DataFilter.bodyContains('t'),
//       ]);

//       expect(filter.apply(one), isFalse);
//       expect(filter.apply(two), isTrue);
//       expect(filter.apply(three), isTrue);
//       expect(filter.apply(four), isFalse);

//       final filtered = data.where(filter.apply).toList();
//       expect(filtered, [two, three]);
//     });

//     test('or filter', () {
//       final filter = OrFilter([
//         DataFilter.idGreaterThan(3),
//         DataFilter.bodyContains('e'),
//       ]);

//       expect(filter.apply(one), isTrue);
//       expect(filter.apply(two), isFalse);
//       expect(filter.apply(three), isTrue);
//       expect(filter.apply(four), isTrue);

//       final filtered = data.where(filter.apply).toList();
//       expect(filtered, [one, three, four]);
//     });

//     test('combo filter', () {
//       final filter = AndFilter([
//         AndFilter([
//           DataFilter.idGreaterThan(1),
//           DataFilter.bodyContains('t'),
//         ]),
//         OrFilter([
//           DataFilter.idLessThan(2),
//           DataFilter.bodyContains('e'),
//         ]),
//       ]);

//       expect(filter.apply(one), isFalse);
//       expect(filter.apply(two), isFalse);
//       expect(filter.apply(three), isTrue);
//       expect(filter.apply(four), isFalse);

//       final filtered = data.where(filter.apply).toList();
//       expect(filtered, [three]);
//     });
//   });
// }

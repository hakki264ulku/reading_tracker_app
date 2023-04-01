import 'package:equatable/equatable.dart';

class Book extends Equatable {
  final String name;
  final String coverUrl;
  final String id;

  const Book({
    required this.name,
    required this.coverUrl,
    required this.id,
  });
  

  @override
  List<Object> get props => [name, coverUrl];
}

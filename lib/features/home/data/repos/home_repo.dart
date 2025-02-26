//repostiorty pattern : create an abstract class for the repository and specify the features that will implement without how to implement it
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/errors/failures.dart';

import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel,});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(book: bookModel),
                Expanded(
                  child: const SizedBox(
                    height: 28,
                  ),
                ),
                SimilarBooksSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}

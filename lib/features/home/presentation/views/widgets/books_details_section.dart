import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styles.dart';

import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: CustomBookImage(imageUrl: 'https://www.google.com/search?sca_esv=b666dd20b3ab7682&sxsrf=AHTn8zrD-7M2I1UFvF3oS6OxSNCBaRWpxQ:1740839892900&q=books&udm=2&fbs=ABzOT_CWdhQLP1FcmU5B0fn3xuWpA-dk4wpBWOGsoR7DG5zJBowKedvv-qb4bbX7pyeScd4QofTWZiaJeIVxbl1DlM0r_HPuv6cFXLoy6RAKYecTjkFID4gJNE59rFRqeDtYic8c2Y3gQpeJKhCp3f1B71eNOS5F6KHwG96EbG0O8kJBGdDLOkzwQttFfRIr0sgm8gvyNFDcXmXt-Ol5aZcR5m7QkHs-WA&sa=X&ved=2ahUKEwi2jbX7jemLAxUoTaQEHdJbHbgQtKgLegQIEhAB#vhid=T2dmDLCtWyfD4M&vssid=mosaic',),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        BookRating(
          rating: 4,
          count: 254,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 32,
        ),
        const BooksAction(),
      ],
    );
  }
}
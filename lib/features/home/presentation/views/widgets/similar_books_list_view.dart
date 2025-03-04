import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_error.dart';
import 'package:flutter_application_1/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: CustomBookImage(
                      imageUrl:
                          'https://www.google.com/search?sca_esv=b666dd20b3ab7682&sxsrf=AHTn8zrD-7M2I1UFvF3oS6OxSNCBaRWpxQ:1740839892900&q=books&udm=2&fbs=ABzOT_CWdhQLP1FcmU5B0fn3xuWpA-dk4wpBWOGsoR7DG5zJBowKedvv-qb4bbX7pyeScd4QofTWZiaJeIVxbl1DlM0r_HPuv6cFXLoy6RAKYecTjkFID4gJNE59rFRqeDtYic8c2Y3gQpeJKhCp3f1B71eNOS5F6KHwG96EbG0O8kJBGdDLOkzwQttFfRIr0sgm8gvyNFDcXmXt-Ol5aZcR5m7QkHs-WA&sa=X&ved=2ahUKEwi2jbX7jemLAxUoTaQEHdJbHbgQtKgLegQIEhAB#vhid=T2dmDLCtWyfD4M&vssid=mosaic',
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

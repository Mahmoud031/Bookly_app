import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_error.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter_application_1/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(), // Disable scrolling
            padding: EdgeInsets.zero,
            shrinkWrap:
                true, // Ensure the ListView takes only the space it needs
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel: state.books[index],),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

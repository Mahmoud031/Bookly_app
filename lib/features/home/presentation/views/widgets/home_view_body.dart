import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styles.dart';

import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBooksListView(),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Best Seller",
              style: Styles.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}

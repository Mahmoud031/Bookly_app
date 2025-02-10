import 'package:flutter/material.dart';

import 'custom_book_detaols_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [CustomBookDetailsAppBar()],
      ),
    );
  }
}



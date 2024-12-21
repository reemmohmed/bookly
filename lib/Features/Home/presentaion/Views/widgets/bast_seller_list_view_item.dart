import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
import 'package:bookly/core/Utils/app_routs.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/Utils/Style.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouts.kBookDetalseView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookItem(
                imageUrl: booksModel.volumeInfo!.imageLinks.thumbnail),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      booksModel.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle18,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    // no

                    booksModel.volumeInfo!.language!,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle18
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating(
                        count: 99,
                        rating: 977,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

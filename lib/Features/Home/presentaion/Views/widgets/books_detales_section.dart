import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/book_action.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Utils/Style.dart';

class BooksDetalesSection extends StatelessWidget {
  const BooksDetalesSection({
    super.key,
    required this.books,
  });
  final BooksModel books;
  @override
  Widget build(BuildContext context) {
    var wight = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: wight * .2),
          child: CustomBookItem(
            imageUrl: books.volumeInfo!.imageLinks.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          textAlign: TextAlign.center,
          books.volumeInfo!.title!,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            textAlign: TextAlign.center,
            books.volumeInfo!.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 0,
          count: 8,
        ),
        const SizedBox(
          height: 16,
        ),
        BookAction(
          booksModel: books,
        ),
      ],
    );
  }
}

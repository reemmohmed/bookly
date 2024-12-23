import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_buttom.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButtom(
              titel: '19.19*',
              bacgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButtom(
              onPressed: () async {
                final Uri url =
                    Uri.parse(booksModel.accessInfo!.webReaderLink!);
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              fontsize: 16,
              titel: 'Free Preview',
              bacgroundColor: Color(0xffEF8262),
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          )
        ],
      ),
    );
  }
}

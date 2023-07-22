import 'package:flutter/material.dart';

class CategoryCardWidget extends StatefulWidget {
  const CategoryCardWidget({
    super.key,
    required this.id,
    required this.categoryName,
    this.image,
  });

  final int id;
  final String categoryName;
  final String? image;

  @override
  State<CategoryCardWidget> createState() => _CategoryCardWidgetState();
}

class _CategoryCardWidgetState extends State<CategoryCardWidget> {
  bool favourite = false;

  @override
  Widget build(BuildContext context) {
    // final themeData = Theme.of(context);

    return Center(
      child: SizedBox(
        width: 164,
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: const Color(0XFFF9F9F9),
                  height: 164,
                  width: 164,
                  child: Image.network(
                    widget.image!,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        favourite = !favourite;
                      });
                    },
                    icon: Icon(
                      favourite
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_sharp,
                    ),
                    color: favourite ? const Color(0xFFD63D46) : Colors.black,
                  ),
                )
              ],
            ),
            Text(
              widget.categoryName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           '1 990 ₽',
            //           style: themeData.textTheme.bodyMedium,
            //         ),
            //         Text(
            //           '2 990 ₽',
            //           style: themeData.textTheme.bodySmall,
            //         )
            //       ],
            //     ),
            //     IconButton(
            //       onPressed: () {},
            //       icon: const Icon(
            //         Icons.card_travel_rounded,
            //       ),
            //       color: const Color(0xFFFFFFFF),
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: const Color(0xFF000000),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

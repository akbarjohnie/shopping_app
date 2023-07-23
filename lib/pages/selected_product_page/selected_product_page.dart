import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/data/models/catalog/get/product/product_model.dart';

@RoutePage()
class SelectedProductPage extends StatelessWidget {
  const SelectedProductPage({
    super.key,
    this.id,
    this.price,
    this.discount,
    this.oldPrice,
    this.categoryName,
    this.article,
    this.image,
    this.badges,
    this.rating,
    this.reviewsCount,
    this.brand,
  });

  final int? id; // ?
  final String? price;
  final num? discount;
  final String? oldPrice;
  final String? categoryName;
  final String? article; // ?
  final String? image;
  final Badges? badges; // ?
  final num? rating;
  final int? reviewsCount;
  final String? brand;

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryName'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: SizedBox(
              width: 250,
              height: 250,
              child: Image.network(
                fit: BoxFit.fill,
                image ??
                    'https://static8.depositphotos.com/1431107/919/i/600/depositphotos_9199988-stock-photo-oops-icon.jpg',
                errorBuilder: (context, error, stackTrace) => Center(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Text("$error"),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  '$price ₽',
                  style: themeData.textTheme.bodyLarge
                      ?.copyWith(decoration: TextDecoration.underline),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (discount != 0 && discount != null)
                      Text('Экономия $discount ₽'),
                    if (oldPrice != null)
                      Text(
                        "$oldPrice ₽",
                        style: themeData.textTheme.bodySmall?.copyWith(
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.left,
                      ),
                  ],
                )
              ],
            ),
          ),
          Text(
            'Информация',
            style: themeData.textTheme.bodyLarge,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Производство: $brand'),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      (rating == 0 || rating == null)
                          ? 'Нет отзывов'
                          : 'Рейтинг товара: $rating/5 ',
                    ),
                    Icon(
                      //TODO: Доработать
                      (rating == 0 || rating == null) ? null : Icons.star,
                      color: Colors.yellow,
                      fill:
                          (rating == 0 || rating == null) ? null : rating! / 5,
                    ),
                  ],
                ),
                if (reviewsCount != null && reviewsCount != 0)
                  Row(
                    children: [
                      Text(
                        'Отзывов: $reviewsCount',
                      ),
                    ],
                  ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Добавить в корзину'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

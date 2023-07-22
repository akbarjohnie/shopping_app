import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/data/models/catalog/get/product/product_model.dart';
import 'package:shopping_app/navigation/app_router.dart';

class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget({
    super.key,
    required this.id,
    required this.categoryName,
    this.image,
    this.price,
    this.discount,
    this.oldPrice,
    this.article,
    this.badges,
    this.rating,
    this.reviewsCount,
    required this.brand,
  });

  final int? id;
  final String? price;
  final num? discount;
  final String? oldPrice;
  final String? categoryName;
  final String? article;
  final String? image;
  final Badges? badges;
  final num? rating;
  final int? reviewsCount;
  final String brand;

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  bool favourite = false;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Center(
      child: GestureDetector(
        onTap: () => AutoRouter.of(context).push(
          SelectedProductRoute(
            categoryName: widget.categoryName,
            image: widget.image,
            price: widget.price,
            article: widget.article,
            brand: widget.brand,
            discount: widget.discount,
            oldPrice: widget.oldPrice,
            id: widget.id,
            rating: widget.rating,
            reviewsCount: widget.reviewsCount,
          ),
        ),
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
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Image.network(
                        widget.image!,
                      ),
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
                widget.categoryName!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.price} ₽',
                        style: themeData.textTheme.bodyMedium,
                      ),
                      if (widget.oldPrice != null)
                        Text(
                          '${widget.oldPrice} ₽',
                          style: themeData.textTheme.bodySmall,
                        )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.card_travel_rounded,
                    ),
                    color: const Color(0xFFFFFFFF),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

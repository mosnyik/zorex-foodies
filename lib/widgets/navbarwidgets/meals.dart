import 'package:flutter/material.dart';
import 'package:foodapp/screens/menu_details.dart';
import 'package:foodapp/widgets/elements/menu_cards.dart';
import 'package:foodapp/components/models/menu.dart';

List<Meal> mealList = [
  Meal(
      name: 'Jellof Rice',
      price: 1200,
      image: 'logo_rice1.png',
      wishList: true,
      description:
          'Full nutritious meal of nigerian jellof rice made for your enjoyment',
      rating: 4.5),
  Meal(
      name: 'chicken Pasta Salad',
      price: 1400,
      image: 'chicken_pasta_salad.jpeg',
      wishList: false,
      description:
          'Full nutritious meal of nigerian jellof rice made for your enjoyment',
      rating: 4.5),
  Meal(
      name: 'Spicy Noodles',
      price: 1400,
      image: 'spicy_noodles.jpeg',
      wishList: false,
      description:
          'Full nutritious meal of nigerian jellof rice made for your enjoyment',
      rating: 4.5),
];

class Meals extends StatelessWidget {
  const Meals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 170,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 220,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 5),
            itemCount: mealList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (_, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BigMenuCard(
                        pic: 'images/${mealList[index].image}',
                        onPress: () {
                          Navigator.pushNamed(context, MenuDetails.id);
                        },
                      ),
                    ],
                  ),
                ],
              );
            }));
  }
}

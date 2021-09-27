import 'package:dog_social/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

// ignore: must_be_immutable
class DogWalker extends StatelessWidget{
  String? name;
  String? description;
  String? amountOfWalks;
  int? distance;
  int? age;
  int? experience;
  int? amount;
  double? rating;
  String? image;

  DogWalker(
      {Key? key,  this.name,
       this.description,
       this.amountOfWalks,
       this.distance,
       this.age,
       this.experience,
       this.amount,
       this.rating,
       this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 145,
          width: 179,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.orange,
            image: DecorationImage(
              image: NetworkImage(
                image!,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 5,
                top: 5,
                child: GlassContainer.frostedGlass(
                  height: 25,
                  width: 49,
                  padding: const EdgeInsets.all(5),
                  blur: 4,
                  borderRadius: BorderRadius.circular(6),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffFFCB55),
                        size: 12,
                      ),
                      Text(
                        rating.toString(),
                        style: AppStyles.vSmallText(
                          color: const Color(0xffFFCB55),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: AppStyles.mediumText(),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,
                        size: 10, color: Colors.grey),
                    Text(
                      '$distance km from you',
                      style: AppStyles.vSmallText(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(width: 30),
            AppStyles.priceTag(price: amount.toString())
          ],
        )
      ],
    );
  }

  
}

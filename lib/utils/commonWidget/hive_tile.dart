import 'package:flutter/material.dart';

import '../theme.dart';

class HiveTile extends StatelessWidget {
  final String image;
  final String name;
  final double weight;
  final String date;
  final String externalId;

  const HiveTile({Key? key, required this.image, required this.name, required this.weight, required this.date, required this.externalId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image)),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(color: green),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(name),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(15),
                  ),
                ),
                child: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: '$weight',
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      const WidgetSpan(
                        alignment: PlaceholderAlignment.top,
                        child: Text(
                          'kg',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Text(
                externalId.substring(externalId.length - 6),
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:corona_news/data/models/country.dart';
import 'package:corona_news/presentation/widgets/title_part.dart';
import 'package:flutter/material.dart';

class CountryItem extends StatelessWidget {
  final Country country;

  CountryItem(this.country) : assert(country != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            width: 0.5,
            color: Colors.grey,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitlePart(country.name),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Xəstələr: ${country.totalCases}'),
                const SizedBox(
                  height: 5,
                ),
                Text.rich(
                  TextSpan(text: 'Yeni Xəstələr: ', children: [
                    TextSpan(
                      text: '${country.newCases}',
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('Ölüm: ${country.totalDeaths}'),
                const SizedBox(
                  height: 5,
                ),
                Text.rich(
                  TextSpan(text: 'Yeni Ölüm: ', children: [
                    TextSpan(
                      text: '${country.newDeaths}',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('Sağalıb: ${country.totalRecovered}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

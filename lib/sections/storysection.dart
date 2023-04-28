import 'package:facebook_application/assets.dart';
import 'package:facebook_application/widgets/storycard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Dwayne Johnson',
            story: dwayne,
            avatar: dwayne,
            creatStory: true,
            displayBorder: false,
            
          ),
          StoryCard(
            labelText: 'Margot Robbie',
            story: margo,
            avatar: margor,
            creatStory: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Johnny Depp',
            story: johnys,
            avatar: johnny,
            creatStory: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Vin Diesel',
            story: vins,
            avatar: vin,
            creatStory: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Billgates',
            story: billgatess,
            avatar: billgates,
            creatStory: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Ryan Gosling',
            story: ryans,
            avatar: ryan,
            creatStory: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Jennifer Lawrence',
            story: jennifers,
            avatar: jennifer,
            creatStory: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}

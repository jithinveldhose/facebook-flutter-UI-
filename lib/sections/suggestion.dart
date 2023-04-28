import 'package:facebook_application/assets.dart';
import 'package:facebook_application/widgets/suggestioncard.dart';
import 'package:flutter/material.dart';

class suggestionSection extends StatelessWidget {
  const suggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            leading: Text('People you may know'),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[700],
                )),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [suggestionCard(
                Avatar:robert,
                name: 'Robert Downey Jr',
                mutualfriends: '9 mutual friedns',
                addfriend: () {},
                remove: () {},
              ),
              suggestionCard(
                Avatar: jessica,
                name: 'Jessica Chastain',
                mutualfriends: '1 mutual friedns',
                addfriend: () {},
                remove: () {},
              ),
              suggestionCard(
                Avatar: Elonmusk,
                name: 'Elonmusk',
                mutualfriends: '3 mutual friedns',
                addfriend: () {},
                remove: () {},
              ),
              suggestionCard(
                Avatar: eminem,
                name: 'Eminem',
                mutualfriends: '6 mutual friedns',
                addfriend: () {},
                remove: () {},
              ),
              suggestionCard(
                Avatar: billgates,
                name: 'Billgates',
                mutualfriends: '1 mutual friedns',
                addfriend: () {},
                remove: () {},
              ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

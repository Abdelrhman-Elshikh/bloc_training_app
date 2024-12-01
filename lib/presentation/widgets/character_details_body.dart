import 'package:bloc_training_app/data/models/character/character_model.dart';
import 'package:bloc_training_app/utils/constances/custom_colors.dart';
import 'package:flutter/material.dart';

class CharacterDetailsBody extends StatelessWidget {
  const CharacterDetailsBody({super.key, required this.character});

  final CharacterModel character;

  Widget characterInfo(String title, String value) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(
              color: CustomColors.KWhite,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: value,
            style: const TextStyle(
              color: CustomColors.KWhite,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDivider(double endIndent) {
    return Divider(
      height: 30,
      endIndent: endIndent,
      color: CustomColors.KYellow,
      thickness: 2,
    );
  }

  Widget buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 800,
      pinned: true,
      stretch: true,
      // backgroundColor: CustomColors.KGrey,
      backgroundColor: CustomColors.KGrey,
      // toolbarHeight: 100,
      toolbarTextStyle: const TextStyle(
          fontSize: 2, fontWeight: FontWeight.bold, color: Colors.black),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Expanded(
          child: Container(
            height: 50,
            // margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),

            color: Colors.black45,
            width: double.infinity,
            // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                character.name ?? '',
                style: const TextStyle(
                  fontSize: 24,
                  color: CustomColors.KWhite,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ),
        ),
        background: Hero(
          tag: character.id!,
          child: Container(
            child: character.image != null
                ? FadeInImage.assetNetwork(
                    placeholder: 'assets/images/loading.gif',
                    image: character.image!,
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/images/place_holder.jpg'),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        buildSliverAppBar(),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    height: 1800,
                  )
                ],
              ))
        ]))
      ],
    );
  }
}

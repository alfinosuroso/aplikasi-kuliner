import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({super.key});

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool _isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _isFavourite = !_isFavourite;
        });
      },
      icon: Icon(_isFavourite ? Icons.favorite : Icons.favorite_border),
      color: Colors.red,
      iconSize: 40,
    );
  }
}

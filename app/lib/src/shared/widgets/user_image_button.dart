import 'package:flutter/material.dart';

class UserImageButton extends StatelessWidget {
  const UserImageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      child: const Text('A'),
    );
  }
}

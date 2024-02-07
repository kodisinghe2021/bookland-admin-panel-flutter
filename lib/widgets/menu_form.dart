import 'package:flutter/material.dart';

class MenuForm extends StatelessWidget {
  const MenuForm({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(color: Colors.white.withOpacity(.9)),
        child: Center(
          child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: onTap,
                child: ListTile(
                  leading: Text("12"),
                  title: Text("Dinapala Smuha"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

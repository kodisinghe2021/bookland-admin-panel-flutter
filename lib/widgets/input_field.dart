import 'package:bookland_admin_panel_web/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';

class InputField extends StatelessWidget {
  InputField({
    required this.hintText,
    required this.suffixIcon,
    required this.onTap,
    required this.fieldName,
    Key? key,
  }) : super(key: key);
  final Function() onTap;
  final String fieldName;
  final String hintText;
  final IconData suffixIcon;

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return SizedBox(
      height: h(context) * .06,
      child: Row(
        children: [
          const SizedBox(width: 20),
          Text(
            fieldName,
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: TextFormField(
              cursorColor: Colors.amber,
              // maxLength: 20,
              decoration: InputDecoration(
                hintText: hintText,
                suffixIcon: Icon(
                  suffixIcon,
                  color: Colors.amber,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                    width: 3,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

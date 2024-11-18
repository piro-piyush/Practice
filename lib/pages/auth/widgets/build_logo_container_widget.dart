import 'package:flutter/material.dart';

class BuildLogoContainerWidget extends StatefulWidget {
  final String text;
  final String imageUrl;
  const BuildLogoContainerWidget(
      {super.key, required this.text, required this.imageUrl});

  @override
  State<BuildLogoContainerWidget> createState() =>
      _BuildLogoContainerWidgetState();
}

class _BuildLogoContainerWidgetState extends State<BuildLogoContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 160,
        decoration: BoxDecoration(
            color: const Color(0xFFF5F9FE),
            borderRadius: BorderRadius.circular(14)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  widget.imageUrl,
                  height: 24,
                  width: 24,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(widget.text,
                    style: const TextStyle(
                        fontSize: 16, color: Color(0xFF61677D))),
              ],
            ),
          ),
        ));
  }
}

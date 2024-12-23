import 'package:flutter/material.dart';

class RadionButton extends StatelessWidget {
  final String option;
  final int index;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const RadionButton({
    Key? key,
    required this.option,
    required this.index,
    required this.selectedIndex,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(option),
      leading: Radio<int>(
        value: index,
        groupValue: selectedIndex,
        onChanged: (value) {
          onSelected(value!);
        },
      ),
      onTap: () {
        onSelected(index);
      },
    );
  }
}

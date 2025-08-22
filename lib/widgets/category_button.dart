import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  const CategoryButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.isSelected = false, // Default value for isSelected
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            if (!isSelected)
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
              ),
          ],
        ),
        child: Center( // Center widget untuk memastikan teks berada di tengah
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

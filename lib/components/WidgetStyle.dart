import 'package:flutter/material.dart';

import '../utils/AppConstants.dart';

class BoxShadow{
  BoxShadow customDecoration(context){
    return
          BoxShadow(
            color: AppColors().textFieldShadow,
            // Shadow color
            spreadRadius: 2,
            // Spread of the shadow
            blurRadius: 5,
            // Blur radius of the shadow
            offset: const Offset(
                0, 2),
          )
  }
  // return
}
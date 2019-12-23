
import 'package:flutter_exercise_catalog/category_item.dart';
import 'package:flutter_exercise_catalog/clima/screens/loading_screen.dart';

import 'bmi_calculator/screens/home.dart';

List<CategoryItem> categoryItems = [
  CategoryItem(title: 'BMI Calculator', route: BmiHome()),
  CategoryItem(title: 'Clima', route: LoadingScreen())

];
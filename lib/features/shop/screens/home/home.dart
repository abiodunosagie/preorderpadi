import 'package:flutter/material.dart';
import 'package:preorderpadi/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:preorderpadi/features/shop/screens/home/widgets/home_categories.dart';
import 'package:preorderpadi/utils/constants/color.dart';
import 'package:preorderpadi/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --- Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// --- Searchbar
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// --- Categories section
                  /// heading
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          textColor: TColors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// Scrollable Categories
                  THomeCategories(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

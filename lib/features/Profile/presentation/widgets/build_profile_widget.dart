import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_menu/pie_menu.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';

class BuildProfileWidget extends StatelessWidget {
  final TabController tabController;
  const BuildProfileWidget({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(15),
      sliver: SliverAppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        expandedHeight: 150,
        floating: true,
        pinned: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(
                'assets/bgimage.jpg',
              ),
              fit: BoxFit.cover,
              opacity: 0.8,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: context.isMobile ? null : 130,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/person.jpg',
                    ),
                  ),
                ),
                child: const Text(
                  'Osama Nabil',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (context.isMobile)
                const SizedBox()
              else
                Align(
                  alignment: Alignment.bottomRight,
                  child: PieMenu(
                    theme: const PieTheme(
                      delayDuration: Duration.zero,
                      overlayColor: Colors.transparent,
                    ),
                    actions: List.generate(
                      _texts.length,
                      (index) {
                        return PieAction(
                          buttonTheme: PieButtonTheme(
                            backgroundColor: _iconColors[index],
                            iconColor: AppColors.blue,
                          ),
                          tooltip: Text(_texts[index]),
                          onSelect: () {
                            tabController.animateTo(index);
                          },
                          child: Icon(_icons[index]),
                        );
                      },
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.bars),
                        label: const Text('More'),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  label: const Text('Edit'),
                ),
              ),
            ],
          ),
        ],
        bottom: !context.isMobile
            ? null
            : TabBar(
                enableFeedback: true,
                mouseCursor: WidgetStateMouseCursor.clickable,
                controller: tabController,
                automaticIndicatorColorAdjustment: false,
                isScrollable: true,
                tabAlignment: TabAlignment.center,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2,
                indicatorPadding: const EdgeInsets.all(10),
                labelColor: Colors.white,
                overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  border: Border.all(
                    color: AppColors.black,
                    width: 1.5,
                  ),
                ),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                tabs: const [
                  Tab(
                    text: 'Dashboard',
                  ),
                  Tab(
                    text: 'Lessons',
                  ),
                  Tab(
                    text: 'Courses',
                  ),
                  Tab(
                    text: 'History',
                  ),
                ],
              ),
      ),
    );
  }
}

List<String> _texts = [
  'Dashboard',
  'Lessons',
  'Courses',
  'History',
];

List<IconData> _icons = [
  Icons.dashboard,
  Icons.library_books,
  Icons.book,
  Icons.history,
];
final List<Color> _iconColors = [
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.red,
];

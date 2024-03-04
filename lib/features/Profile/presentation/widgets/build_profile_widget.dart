import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import 'package:pie_menu/pie_menu.dart';

class BuildProfileWidget extends StatelessWidget {
  const BuildProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TabController tabController = TabController(
        length: !context.isMobile ? 0 : 4, vsync: Scaffold.of(context));

    return SliverPadding(
      padding: const EdgeInsets.all(15),
      sliver: SliverAppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        expandedHeight: 150,
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
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/person.jpg',
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
              const Expanded(
                child: ListTile(
                  title: Text('Osama Nabil'),
                  subtitle: Text('Student'),
                  titleTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  subtitleTextStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
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
              context.isMobile
                  ? const SizedBox()
                  : PieMenu(
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
                            onSelect: () {},
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
            ],
          ),
        ],
        bottom: TabBar(
          enableFeedback: true,
          mouseCursor: MaterialStateMouseCursor.clickable,
          controller: tabController,
          automaticIndicatorColorAdjustment: false,
          isScrollable: true,
          tabAlignment: TabAlignment.center,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2,
          indicatorPadding: const EdgeInsets.all(10),
          labelColor: Colors.white,
          overlayColor: const MaterialStatePropertyAll(Colors.transparent),
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
          tabs: !context.isMobile
              ? []
              : const [
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

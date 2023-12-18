import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: double.maxFinite, height: 14),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 16, height: 50),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 343,
                        child: Text(
                          "Интересы",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.70,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 343,
                        child: Text(
                          "Мы подбираем истории и предложения по темам, которые вам нравятся",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.550000011920929),
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.42,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: double.infinity, height: 12),
          const CreateFiltersList(),
        ],
      ),
    );
  }
}

class CreateFiltersList extends StatefulWidget {
  const CreateFiltersList({super.key});

  @override
  State<CreateFiltersList> createState() => ListFilters();
}

class ListFilters extends State<CreateFiltersList> {
  List<String> filterChips = [
    "Еда",
    "Саморазвитие",
    "Технологии",
    "Дом",
    "Досуг",
    "Забота о себе",
    "Наука",
  ];

  List<String> selectedFilters = [];

  selectFilter(String filter) {
    setState(() {
      if (selectedFilters.contains(filter)) {
        selectedFilters.remove(filter);
      } else {
        selectedFilters.add(filter);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Wrap(
        spacing: 8,
        children: filterChips
            .map(
              (filterChip) => FilterChip(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0,
                    color: Colors.black.withOpacity(0.07999999821186066),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                showCheckmark: false,
                backgroundColor: Colors.black.withOpacity(0.07999999821186066),
                selected: selectedFilters.contains(filterChip),
                onSelected: (selected) {
                  selectFilter(filterChip);
                },
                selectedColor: const Color.fromARGB(80, 0, 0, 0),
                label: SizedBox(
                  child: Text(
                    filterChip,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

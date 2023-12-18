import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 14, bottom: 12, left: 16, right: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 343,
                  child: Text(
                    "У вас подключено",
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
                    "Подписки, автоплатежи и сервисы на которые вы подписались",
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
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            height: 165,
            child: ListCarousel(),
          ),
        ],
      ),
    );
  }
}

class StructListCarousel {
  String producte;
  String image;
  String line1;
  String line2;

  StructListCarousel({
    required this.producte,
    required this.image,
    required this.line1,
    required this.line2,
  });
}

class ListCarousel extends StatelessWidget {
  ListCarousel({super.key});

  final List<StructListCarousel> listCarousel = <StructListCarousel>[
    StructListCarousel(
      producte: "СберПрайм",
      image: "assets/images/1.png",
      line1: "Платёж 9 июля",
      line2: "199 ₽ в месяц",
    ),
    StructListCarousel(
      producte: "Переводы",
      image: "assets/images/2.png",
      line1: "Автопродление 21 августа",
      line2: "199 ₽ в месяц",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: listCarousel.length,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        width: 8,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.only(top: 14, bottom: 14),
          width: 216,
          height: double.maxFinite,
          child: Container(
            padding: const EdgeInsets.only(top: 14, bottom: 16),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x114F4F6C),
                  blurRadius: 14,
                  offset: Offset(0, 8),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 10,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 2, bottom: 2, right: 12),
                          width: 36,
                          height: 36,
                          child: Image(
                            image: AssetImage(listCarousel[index].image),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            listCarousel[index].producte,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 22),
                  SizedBox(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Text(
                            listCarousel[index].line1,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                        Container(height: 2),
                        SizedBox(
                          child: Text(
                            listCarousel[index].line2,
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.550000011920929),
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

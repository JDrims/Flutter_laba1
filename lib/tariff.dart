import 'package:flutter/material.dart';

class TarifAndLimit extends StatelessWidget {
  const TarifAndLimit({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 12),
            padding: const EdgeInsets.only(
              right: 16,
              left: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "Тарифы и лимиты",
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
                  width: double.maxFinite,
                  child: Text(
                    "Для операций в Сбербанк Онлайн",
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
          ListTarifAndLimit()
        ],
      ),
    );
  }
}

class StructListTarifAndLimit {
  String image;
  String line1;
  String line2;

  StructListTarifAndLimit({
    required this.image,
    required this.line1,
    required this.line2,
  });
}

class ListTarifAndLimit extends StatelessWidget {
  ListTarifAndLimit({super.key});

  final List<StructListTarifAndLimit> listTarifAndLimit =
      <StructListTarifAndLimit>[
    StructListTarifAndLimit(
      image: "assets/images/ic_1.png",
      line1: "Изменить суточный лимит",
      line2: "На платежи и переводы",
    ),
    StructListTarifAndLimit(
      image: "assets/images/ic_2.png",
      line1: "Переводы без комиссии",
      line2: "Показать остаток в этом месяце",
    ),
    StructListTarifAndLimit(
      image: "assets/images/ic_3.png",
      line1: "Информация о тарифах и лимитах",
      line2: "",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listTarifAndLimit.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(left: 16),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 12),
                width: 36,
                height: 40,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Image(
                  image: AssetImage(listTarifAndLimit[index].image),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    listTarifAndLimit[index].line1,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.40,
                                    ),
                                  ),
                                ),
                                if(listTarifAndLimit[index].line2 != "")
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    listTarifAndLimit[index].line2,
                                    style: TextStyle(
                                      color: Colors.black
                                          .withOpacity(0.550000011920929),
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
                          Container(
                            margin: const EdgeInsets.only(left: 16, right: 8),
                            child: IconButton(
                              onPressed: () {},
                              iconSize: 24,
                              icon: const Image(
                                image:
                                    AssetImage("assets/images/Disclosure.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (index != listTarifAndLimit.length - 1)
                      const Divider(
                        height: 4,
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

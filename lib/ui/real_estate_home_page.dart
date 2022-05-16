import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:real_estate_app/model/real_estate.dart';
import 'package:real_estate_app/ui/real_estate_card_widget.dart';
import 'package:real_estate_app/ui/real_estate_detail_page.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({Key? key}) : super(key: key);

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        actions: [
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bandung, West Java",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("1,080 results", style: TextStyle(color: Colors.grey)),
                  Text("Newest", style: TextStyle(color: Colors.grey))
                ],
              ),
              SizedBox(height: 16),
              ...List.generate(
                  realEstateItem.length,
                  (index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RealEstateDetailPage(
                                  realEstate: realEstateItem[index])));
                        },
                        child: RealEstateCardWidget(
                          realEstate: realEstateItem[index],
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}

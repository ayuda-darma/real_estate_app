import 'package:flutter/material.dart';
import 'package:real_estate_app/model/real_estate.dart';

class RealEstateDetailPage extends StatefulWidget {
  final RealEstate realEstate;
  RealEstateDetailPage({Key? key, required this.realEstate}) : super(key: key);

  @override
  State<RealEstateDetailPage> createState() => _RealEstateDetailPageState();
}

class _RealEstateDetailPageState extends State<RealEstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  image: AssetImage(widget.realEstate.img ?? ""),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                      left: 16,
                      top: 16,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: widget.realEstate.tag == "PREMIUM"
                              ? Colors.orangeAccent
                              : Colors.greenAccent,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Text(
                            "${widget.realEstate.tag}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 16,
                      right: 16,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: EdgeInsets.all(4),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: EdgeInsets.all(4),
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                      bottom: 134,
                      right: 16,
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(4),
                          child: IntrinsicHeight(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "${widget.realEstate.shots ?? "0"}",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 8),
                                VerticalDivider(
                                  color: Colors.white,
                                  width: 12,
                                ),
                                Icon(
                                  Icons.rotate_left,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "360",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          )))
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 3,
                      width: 24,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    widget.realEstate.title ?? "0",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.bed_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text("${widget.realEstate.rooms ?? 2} beds",
                          style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 16),
                      Icon(
                        Icons.bathtub_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text("${widget.realEstate.bathroom ?? 2} baths",
                          style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 8),
                      Icon(
                        Icons.apps,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text("${widget.realEstate.sqft ?? 2} sqft",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    "${widget.realEstate.detail ?? "0"}",
                    style: TextStyle(height: 2, color: Colors.blueGrey),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                      child: Row(children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(
                            widget.realEstate.sellerProfile ?? "",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${widget.realEstate.sellerName ?? "0"}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "${widget.realEstate.sellerSubtitle ?? "0"}",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "\$ ${widget.realEstate.price ?? "0"}",
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.mail_outline,
                              color: Colors.white,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Message",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

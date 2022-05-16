class RealEstate {
  String? img;
  String? tag;
  String? price;
  String? vendor;
  String? title;
  String? detail;
  int? rooms;
  int? bathroom;
  int? sqft;
  String? type;
  String? sellerProfile;
  String? sellerName;
  String? sellerSubtitle;
  int? shots;

  RealEstate({
    this.img,
    this.tag,
    this.price,
    this.vendor,
    this.title,
    this.detail,
    this.rooms,
    this.bathroom,
    this.sqft,
    this.type,
    this.sellerProfile,
    this.sellerName,
    this.sellerSubtitle,
    this.shots,
  });
}

List<RealEstate> realEstateItem = [
  RealEstate(
    img: "images/real_estate1.jpg",
    tag: "PREMIUM",
    price: "399,000",
    vendor: "Griya",
    title: "Exclusive, serviced, all bills Included, City views",
    detail:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    rooms: 2,
    bathroom: 2,
    sqft: 2533,
    type: "Villa",
    sellerProfile: "images/profile1.jpg",
    sellerName: "Romy",
    sellerSubtitle: "Griya Real Estate",
  ),
  RealEstate(
    img: "images/real_estate1.jpg",
    tag: "FEATURED",
    price: "399,000",
    vendor: "Griya",
    title: "Exclusive, serviced, all bills Included, City views",
    detail:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    rooms: 2,
    bathroom: 2,
    sqft: 2533,
    type: "Villa",
    sellerProfile: "images/profile1.jpg",
    sellerName: "Romy",
    sellerSubtitle: "Griya Real Estate",
  ),
];

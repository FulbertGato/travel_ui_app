class CarouselModel {
  String image;

  CarouselModel(this.image);

}
List<Map<String, String>>  carouselsData = [
  {"image": "assets/images/carousel_flight_discount.png"},
  {"image": "assets/images/carousel_hotel_discount.png"},
  {"image": "assets/images/carousel_covid_discount.png"},
];

//convert  carouselsData to List<CarouselModel>
List<CarouselModel> carousels = [
  CarouselModel("assets/images/carousel_flight_discount.png"),
  CarouselModel("assets/images/carousel_hotel_discount.png"),
  CarouselModel("assets/images/carousel_covid_discount.png"),
];










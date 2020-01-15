class Meal{
  String title, image, desc;
  Meal(this.title, this.image, this.desc);

  String get getTitle => title;
  set setTitle(String value){
    title = value;
  }

  String get getImage => image;
  set setImage(String value){
    image = value;
  }

  String get getDesc => desc;
  set setDesc(String value){
    desc = value;
  }
}
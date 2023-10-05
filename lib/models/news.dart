class NewsModel {
  int? id;
  String? title;
  String? detail;

  NewsModel({this.id, this.title, this.detail});

  // Map ==> NewsModel
  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    detail = json['detail'];
  }

  // NewsModel ==> Map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['detail'] = this.detail;
    return data;
  }
}

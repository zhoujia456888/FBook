///书架
class BookShelfModel {
  BookShelfModel({
    this.bookId,
    this.bookName,
    this.bookAddress,
    this.bookCover,
    this.bookFormat,
    this.bookSize,
    this.addDate,
    this.lastReadDate,
  });

  int? bookId; //书籍Id
  String? bookName; //书籍名称
  String? bookAddress; //书籍地址
  String? bookCover; //书籍封面
  String? bookFormat; //书籍格式（txt、pdf、epud）
  String? bookSize; //书籍大小（KB）
  int? addDate; //添加时间
  int? lastReadDate; //最后阅读时间
}

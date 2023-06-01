class gita_data {
  int? chapterNumber;
  String? chapterSummary;
  String? chapterSummaryHindi;
  int? id;
  String? imageName;
  String? name;
  String? nameMeaning;
  String? nameTranslation;
  String? nameTransliterated;
  int? versesCount;
  List<gita_data> gitaa = [];

  gita_data(
      {
        this.chapterNumber,
        this.chapterSummary,
        this.chapterSummaryHindi,
        this.id,
        this.imageName,
        this.name,
        this.nameMeaning,
        this.nameTranslation,
        this.nameTransliterated,
        this.versesCount
      }
      );
  gita_data.fromJson(Map<String, dynamic> json) {
    chapterNumber = json['chapter_number'];
    chapterSummary = json['chapter_summary'];
    chapterSummaryHindi = json['chapter_summary_hindi'];
    id = json['id'];
    imageName = json['image_name'];
    name = json['name'];
    nameMeaning = json['name_meaning'];
    nameTranslation = json['name_translation'];
    nameTransliterated = json['name_transliterated'];
    versesCount = json['verses_count'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['chapter_number'] = this.chapterNumber;
    data['chapter_summary'] = this.chapterSummary;
    data['chapter_summary_hindi'] = this.chapterSummaryHindi;
    data['id'] = this.id;
    data['image_name'] = this.imageName;
    data['name'] = this.name;
    data['name_meaning'] = this.nameMeaning;
    data['name_translation'] = this.nameTranslation;
    data['name_transliterated'] = this.nameTransliterated;
    data['verses_count'] = this.versesCount;
    return data;
  }
}
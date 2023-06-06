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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['chapter_number'] = chapterNumber;
    data['chapter_summary'] = chapterSummary;
    data['chapter_summary_hindi'] = chapterSummaryHindi;
    data['id'] = id;
    data['image_name'] = imageName;
    data['name'] = name;
    data['name_meaning'] = nameMeaning;
    data['name_translation'] = nameTranslation;
    data['name_transliterated'] = nameTransliterated;
    data['verses_count'] = versesCount;
    return data;
  }
}
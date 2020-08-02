class Link {
  final String suggestedLinkText;
  final String type;
  final String url;

  Link({
    this.suggestedLinkText,
    this.type,
    this.url,
  });
}

class MultiMedia {
  final int height;
  final String src;
  final String type;
  final int width;

  MultiMedia({
    this.height,
    this.src,
    this.type,
    this.width,
  });
}

class Movie {
  final String byline;
  final int criticsPick;
  final String dateUpdated;
  final String displayTitle;
  final String headline;
  final Link link;
  final String mpaaRating;
  final MultiMedia multimedia;
  final String openingData;
  final String publicationDate;
  final String summaryShort;

  Movie({
    this.byline,
    this.criticsPick,
    this.dateUpdated,
    this.displayTitle,
    this.headline,
    this.link,
    this.mpaaRating,
    this.multimedia,
    this.openingData,
    this.publicationDate,
    this.summaryShort,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    final Link link = new Link(
      suggestedLinkText: json['link']['suggested_link_text'],
      type: json['link']['type'],
      url: json['link']['url'],
    );

    final MultiMedia multiMedia = new MultiMedia(
      height: json['link']['height'],
      src: json['link']['src'],
      type: json['link']['type'],
      width: json['link']['width'],
    );

    return Movie(
      byline: json['byline'],
      criticsPick: json['critics_pick'],
      dateUpdated: json['date_updated'],
      displayTitle: json['display_title'],
      headline: json['headline'],
      link: link,
      mpaaRating: json['mpaa_rating'],
      multimedia: multiMedia,
      openingData: json['opening_data'],
      publicationDate: json['publication_date'],
      summaryShort: json['summary_short'],
    );
  }
}
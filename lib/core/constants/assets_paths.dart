class AssetsPath {
  static final AssetsPath _instance = AssetsPath._init();
  AssetsPath._init();

  factory AssetsPath() {
    return _instance;
  }

  // !SVG
  final String addSVG = 'assets/svg/add.svg';
  final String commentSVG = 'assets/svg/comment.svg';
  final String heartSVG = 'assets/svg/heart.svg';
  final String homeSVG = 'assets/svg/home.svg';
  final String logoSVG = 'assets/svg/logo.svg';
  final String messageSVG = 'assets/svg/message.svg';
  final String reelsSVG = 'assets/svg/reels.svg';
  final String saveSVG = 'assets/svg/save.svg';
  final String searchSVG = 'assets/svg/search.svg';
  final String sendSVG = 'assets/svg/send.svg';
  final String shoppingSVG = 'assets/svg/shopping.svg';
}

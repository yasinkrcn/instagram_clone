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
  final String logoSVG = 'assets/svg/logo.svg';
  final String saveSVG = 'assets/svg/save.svg';
  final String sendSVG = 'assets/svg/send.svg';
  final String menuhamburgerSVG = 'assets/svg/menu_hamburger.svg';
  final String profile1SVG = 'assets/svg/profile1.svg';
  final String profile2SVG = 'assets/svg/profile2.svg';
  final String obscureSVG = 'assets/svg/obscure.svg';
  final String facebookSVG = 'assets/svg/facebook_logo.svg';

  //!BOTTOM NAV BAR

  //ACTIVE
  final String activeHomeSVG =
      'assets/svg/bottom_nav_bar/active/active_home.svg';
  final String activeSearchSVG =
      'assets/svg/bottom_nav_bar/active/active_search.svg';
  final String activeReelsSVG =
      'assets/svg/bottom_nav_bar/active/active_reels.svg';
  final String activeShopSVG =
      'assets/svg/bottom_nav_bar/active/active_shop.svg';
  final String activeProfileSVG =
      'assets/svg/bottom_nav_bar/active/active_profile.svg';

  //DEACTIVE
  final String deactiveHomeSVG =
      'assets/svg/bottom_nav_bar/deactive/deactive_home.svg';
  final String deactiveSearchSVG =
      'assets/svg/bottom_nav_bar/deactive/deactive_search.svg';
  final String deactiveReelsSVG =
      'assets/svg/bottom_nav_bar/deactive/deactive_reels.svg';
  final String deactiveShopSVG =
      'assets/svg/bottom_nav_bar/deactive/deactive_shop.svg';
  final String deactiveProfileSVG =
      'assets/svg/bottom_nav_bar/deactive/deactive_profile.svg';
}

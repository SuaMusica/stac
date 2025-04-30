import 'package:flutter/material.dart';

class SMStacThemeExtension extends ThemeExtension<SMStacThemeExtension> {
  const SMStacThemeExtension({
    required this.bottomAppBarColor,
    required this.selectedRowColor,
    required this.advertiseOrVerifyBottomSheetCTA,
    required this.advertiseOrVerifyBottomSheetDivider,
    required this.advertiseOrVerifyBottomSheetIconItem,
    required this.advertiseOrVerifyBottomSheetLaterTextButton,
    required this.albumCommentIconColor,
    required this.albumCommentTextColor,
    required this.mediaFavoriteIconColor,
    required this.albumOptionsIconColor,
    required this.albumDownloadIconColor,
    required this.albumPageDividerColor,
    required this.mediaNotReleasedHeaderTitle,
    required this.mediaNotReleasedBody,
    required this.mediaNotReleasedDivider,
    required this.mediaNotReleasedCTA,
    required this.albumInfoBottomSheetTitle,
    required this.albumInfoBottomSheetThumbnailTitle,
    required this.albumInfoBottomSheetThumbnailContent,
    required this.albumInfoBottomSheetPublishedTitle,
    required this.albumInfoBottomSheetPublishedContent,
    required this.albumInfoBottomSheetSizeTitle,
    required this.albumInfoBottomSheetSizeContent,
    required this.albumInfoBottomSheetMusicStyleTitle,
    required this.artistNameColor,
    required this.bannerLibraryColor,
    required this.chatUserMessageColor,
    required this.commonCardBackgroundColor,
    required this.chatWriteMessageBackgroundColor,
    required this.chatWriteMessageTextAndFieldColor,
    required this.createOrEditPlaylistBackgroundColor,
    required this.discoverySuggestionItem,
    required this.editMoreInformationBackgroundColor,
    required this.positiveButtonDescriptionColor,
    required this.positiveButtonBackgroundColor,
    required this.negativeButtonTextColor,
    required this.popupTextColor,
    required this.popupNotNowTextColor,
    required this.itemSelectedColor,
    required this.itemMusicInfoTextColor,
    required this.itemMusicOptionsIconColor,
    required this.itemMusicAddIconColor,
    required this.itemNumberAnimationColor,
    required this.recommendedUsernameMediaFontColor,
    required this.preRollFontBorderColor,
    required this.vividCeruleanToBrandMedium,
    required this.preSearchNewsSection,
    required this.preSearchNewsDate,
    required this.preSearchTitle,
    required this.preSearchIcons,
    required this.helpCenterTextColor,
    required this.helpCenterTitleColor,
    required this.reportAppBarColor,
    required this.reportAppBarTextColor,
    required this.reportAppBarBackgroundColor,
    required this.reportProblemFieldTextColor,
    required this.reportProblemTextStyleColor,
    required this.reportProblemTextButtonColor,
    required this.reportProblemErrorTextColor,
    required this.reportProblemTitleTextColor,
    required this.reportTileIconColor,
    required this.reportDropdownIconColor,
    required this.reportDropdownBorderColor,
    required this.reportDropdownHighlightColor,
    required this.reportCheckBoxUnselectedColor,
    required this.recommendedItemFontColor,
    required this.selectAllTextColor,
    required this.successReportPageTextColor,
    required this.shareContentViewColor,
    required this.smInkWellColor,
    required this.bubbleDeleteWidgetColor,
    required this.libraryStylePremiumColor,
    required this.loginWithoutPassSendTextColor,
    required this.myAlbumTextColor,
    required this.myAlbumButtonBorderColor,
    required this.myAlbumFillColor,
    required this.myPlaylistsPageFillColor,
    required this.playerPageButtonColor,
    required this.profileLoadedColor,
    required this.topsPageLabelColor,
    required this.uploadButtonColor,
    required this.uploadQuestionBackgroundColor,
    required this.uploadTabColor,
    required this.usernameColor,
    required this.dateColor,
    required this.hintCommentColor,
    required this.limitCharacterColor,
    required this.borderInativeColor,
    required this.avatarColor,
    required this.bottomSheetWithIconsColor,
    required this.bottomSheetWithIconsTitleColor,
    required this.dividerBottomSheetColor,
    required this.titleShareVertical,
    required this.trailingShareVertical,
    required this.usernameShareVertical,
    required this.moreShareIconColor,
    required this.mediaSearchEmptyQueryColor,
    required this.mediaSearchWithoutPlaylist,
    required this.myPlaylistsTitlePlaylist,
    required this.myPlaylistsNumberOfMusics,
    required this.myPlaylistsIconButton,
    required this.myPlaylistsCursorColor,
    required this.myPlaylistsIconSearch,
    required this.myPlaylistsClearSearchButton,
    required this.segmentedBubbleIconColor,
    required this.segmentedBubbleTextColor,
    required this.createPlaylistText,
    required this.createPlaylistTextFieldBorder,
    required this.createPlaylistTextFieldHint,
    required this.editPlaylistTextFieldBorder,
    required this.editPlaylistTextFieldHint,
    required this.editPlaylistWithoutMusicsBody,
    required this.bottomSheetFilterTitleText,
    required this.bottomSheetFilterItemUnselectedText,
    required this.bottomSheetWithIconsOrderTitleText,
    required this.bottomSheetWithIconsOrderItemText,
    required this.bottomSheetPremiumAccentColor,
    required this.bottomSheetPremiumHeaderTitleColor,
    required this.bottomSheetPremiumHeaderDescriptionColor,
    required this.playlistPageUsernameColor,
    required this.playlistEmptyPage,
    required this.lowPureToBrandPure,
    required this.lowPureToLowMedium,
    required this.highLightToLowPure,
    required this.highPureToBrandMedium,
    required this.highPureToBrandPure,
    required this.brandPureToHighPure,
    required this.lowMediumToWhite,
    required this.lowPureToHighPure,
    required this.white15ToSpanishGrey50,
    required this.black26ToSpanishGrey50,
    required this.neutralHighLightToNeutralLowMedium,
    required this.highPureToBlack,
    required this.brightSilverToFilmProBlack,
    required this.squareCheckbox,
  });

  final CheckboxThemeData squareCheckbox;
  final Color? bottomAppBarColor;
  final Color? selectedRowColor;
  final Color? advertiseOrVerifyBottomSheetCTA;
  final Color? advertiseOrVerifyBottomSheetDivider;
  final Color? advertiseOrVerifyBottomSheetIconItem;
  final Color? advertiseOrVerifyBottomSheetLaterTextButton;
  final Color? albumCommentIconColor;
  final Color? albumCommentTextColor;
  final Color? mediaFavoriteIconColor;
  final Color? albumOptionsIconColor;
  final Color? albumDownloadIconColor;
  final Color? albumPageDividerColor;
  final Color? mediaNotReleasedHeaderTitle;
  final Color? mediaNotReleasedBody;
  final Color? mediaNotReleasedDivider;
  final Color? mediaNotReleasedCTA;
  final Color? albumInfoBottomSheetTitle;
  final Color? albumInfoBottomSheetThumbnailTitle;
  final Color? albumInfoBottomSheetThumbnailContent;
  final Color? albumInfoBottomSheetPublishedTitle;
  final Color? albumInfoBottomSheetPublishedContent;
  final Color? albumInfoBottomSheetSizeTitle;
  final Color? albumInfoBottomSheetSizeContent;
  final Color? albumInfoBottomSheetMusicStyleTitle;
  final Color? artistNameColor;
  final Color? bannerLibraryColor;
  final Color? commonCardBackgroundColor;
  final Color? chatUserMessageColor;
  final Color? chatWriteMessageBackgroundColor;
  final Color? chatWriteMessageTextAndFieldColor;
  final Color? createOrEditPlaylistBackgroundColor;
  final Color? discoverySuggestionItem;
  final Color? editMoreInformationBackgroundColor;
  final Color? positiveButtonDescriptionColor;
  final Color? positiveButtonBackgroundColor;
  final Color? negativeButtonTextColor;
  final Color? popupTextColor;
  final Color? popupNotNowTextColor;
  final Color? itemSelectedColor;
  final Color? itemMusicInfoTextColor;
  final Color? itemMusicOptionsIconColor;
  final Color? itemMusicAddIconColor;
  final Color? itemNumberAnimationColor;
  final Color? recommendedUsernameMediaFontColor;
  final Color? preRollFontBorderColor;
  final Color? vividCeruleanToBrandMedium;
  final Color? preSearchNewsSection;
  final Color? preSearchNewsDate;
  final Color? preSearchTitle;
  final Color? preSearchIcons;
  final Color? helpCenterTextColor;
  final Color? helpCenterTitleColor;
  final Color? reportAppBarColor;
  final Color? reportAppBarTextColor;
  final Color? reportAppBarBackgroundColor;
  final Color? recommendedItemFontColor;
  final Color? selectAllTextColor;
  final Color? successReportPageTextColor;
  final Color? shareContentViewColor;
  final Color? smInkWellColor;
  final Color? reportProblemFieldTextColor;
  final Color? reportProblemTextStyleColor;
  final Color? reportProblemTextButtonColor;
  final Color? reportProblemErrorTextColor;
  final Color? reportProblemTitleTextColor;
  final Color? reportTileIconColor;
  final Color? reportDropdownIconColor;
  final Color? reportDropdownBorderColor;
  final Color? reportDropdownHighlightColor;
  final Color? reportCheckBoxUnselectedColor;
  final Color? bubbleDeleteWidgetColor;
  final Color? libraryStylePremiumColor;
  final Color? loginWithoutPassSendTextColor;
  final Color? myAlbumTextColor;
  final Color? myAlbumButtonBorderColor;
  final Color? myAlbumFillColor;
  final Color? myPlaylistsPageFillColor;
  final Color? playerPageButtonColor;
  final Color? profileLoadedColor;
  final Color? topsPageLabelColor;
  final Color? uploadButtonColor;
  final Color? uploadQuestionBackgroundColor;
  final Color? uploadTabColor;
  final Color? usernameColor;
  final Color? dateColor;
  final Color? hintCommentColor;
  final Color? limitCharacterColor;
  final Color? borderInativeColor;
  final Color? avatarColor;
  final Color? bottomSheetWithIconsColor;
  final Color? bottomSheetWithIconsTitleColor;
  final Color? dividerBottomSheetColor;
  final Color? titleShareVertical;
  final Color? trailingShareVertical;
  final Color? usernameShareVertical;
  final Color? moreShareIconColor;
  final Color? mediaSearchEmptyQueryColor;
  final Color? mediaSearchWithoutPlaylist;
  final Color? myPlaylistsTitlePlaylist;
  final Color? myPlaylistsNumberOfMusics;
  final Color? myPlaylistsIconButton;
  final Color? myPlaylistsCursorColor;
  final Color? myPlaylistsIconSearch;
  final Color? myPlaylistsClearSearchButton;
  final Color? segmentedBubbleIconColor;
  final Color? segmentedBubbleTextColor;
  final Color? createPlaylistText;
  final Color? createPlaylistTextFieldBorder;
  final Color? createPlaylistTextFieldHint;
  final Color? editPlaylistTextFieldBorder;
  final Color? editPlaylistTextFieldHint;
  final Color? editPlaylistWithoutMusicsBody;
  final Color? bottomSheetFilterTitleText;
  final Color? bottomSheetFilterItemUnselectedText;
  final Color? bottomSheetWithIconsOrderTitleText;
  final Color? bottomSheetWithIconsOrderItemText;
  final Color? bottomSheetPremiumAccentColor;
  final Color? bottomSheetPremiumHeaderTitleColor;
  final Color? bottomSheetPremiumHeaderDescriptionColor;
  final Color? playlistPageUsernameColor;
  final Color? playlistEmptyPage;
  final Color? lowPureToBrandPure;
  final Color? lowPureToLowMedium;
  final Color? highLightToLowPure;
  final Color? highPureToBrandMedium;
  final Color? highPureToBrandPure;
  final Color? brandPureToHighPure;
  final Color? lowMediumToWhite;
  final Color? lowPureToHighPure;
  final Color? white15ToSpanishGrey50;
  final Color? black26ToSpanishGrey50;
  final Color? neutralHighLightToNeutralLowMedium;
  final Color? highPureToBlack;
  final Color? brightSilverToFilmProBlack;

  factory SMStacThemeExtension.fromJson(Map<String, dynamic> json) {
    return SMStacThemeExtension(
      squareCheckbox: const CheckboxThemeData(
        shape: CircleBorder(),
        side: BorderSide(
          width: .35,
          color: Colors.black,
        ),
      ),
      bottomAppBarColor: json['bottomAppBarColor']?.toString().toColor,
      highPureToBlack: json['highPureToBlack']?.toString().toColor,
      lowMediumToWhite: json['lowMediumToWhite']?.toString().toColor,
      lowPureToHighPure: json['lowPureToHighPure']?.toString().toColor,
      white15ToSpanishGrey50:
          json['white15ToSpanishGrey50']?.toString().toColor,
      black26ToSpanishGrey50:
          json['black26ToSpanishGrey50']?.toString().toColor,
      neutralHighLightToNeutralLowMedium:
          json['neutralHighLightToNeutralLowMedium']?.toString().toColor,
      brightSilverToFilmProBlack:
          json['brightSilverToFilmProBlack']?.toString().toColor,
      selectedRowColor: json['selectedRowColor']?.toString().toColor,
      advertiseOrVerifyBottomSheetCTA:
          json['advertiseOrVerifyBottomSheetCTA']?.toString().toColor,
      advertiseOrVerifyBottomSheetDivider:
          json['advertiseOrVerifyBottomSheetDivider']?.toString().toColor,
      advertiseOrVerifyBottomSheetIconItem:
          json['advertiseOrVerifyBottomSheetIconItem']?.toString().toColor,
      advertiseOrVerifyBottomSheetLaterTextButton:
          json['advertiseOrVerifyBottomSheetLaterTextButton']
              .toString()
              .toColor,
      albumCommentIconColor: json['albumCommentIconColor']?.toString().toColor,
      albumCommentTextColor: json['albumCommentTextColor']?.toString().toColor,
      mediaFavoriteIconColor:
          json['mediaFavoriteIconColor']?.toString().toColor,
      albumOptionsIconColor: json['albumOptionsIconColor']?.toString().toColor,
      albumDownloadIconColor:
          json['albumDownloadIconColor']?.toString().toColor,
      albumPageDividerColor: json['albumPageDividerColor']?.toString().toColor,
      mediaNotReleasedHeaderTitle:
          json['mediaNotReleasedHeaderTitle']?.toString().toColor,
      mediaNotReleasedBody: json['mediaNotReleasedBody']?.toString().toColor,
      mediaNotReleasedDivider:
          json['mediaNotReleasedDivider']?.toString().toColor,
      mediaNotReleasedCTA: json['mediaNotReleasedCTA']?.toString().toColor,
      albumInfoBottomSheetTitle:
          json['albumInfoBottomSheetTitle']?.toString().toColor,
      albumInfoBottomSheetThumbnailTitle:
          json['albumInfoBottomSheetThumbnailTitle']?.toString().toColor,
      albumInfoBottomSheetThumbnailContent:
          json['albumInfoBottomSheetThumbnailContent']?.toString().toColor,
      albumInfoBottomSheetPublishedTitle:
          json['albumInfoBottomSheetPublishedTitle']?.toString().toColor,
      albumInfoBottomSheetPublishedContent:
          json['albumInfoBottomSheetPublishedContent']?.toString().toColor,
      albumInfoBottomSheetSizeTitle:
          json['albumInfoBottomSheetSizeTitle']?.toString().toColor,
      albumInfoBottomSheetSizeContent:
          json['albumInfoBottomSheetSizeContent']?.toString().toColor,
      albumInfoBottomSheetMusicStyleTitle:
          json['albumInfoBottomSheetMusicStyleTitle']?.toString().toColor,
      artistNameColor: json['artistNameColor']?.toString().toColor,
      bannerLibraryColor: json['bannerLibraryColor']?.toString().toColor,
      chatUserMessageColor: json['chatUserMessageColor']?.toString().toColor,
      commonCardBackgroundColor:
          json['commonCardBackgroundColor']?.toString().toColor,
      chatWriteMessageBackgroundColor:
          json['chatWriteMessageBackgroundColor']?.toString().toColor,
      chatWriteMessageTextAndFieldColor:
          json['chatWriteMessageTextAndFieldColor']?.toString().toColor,
      createOrEditPlaylistBackgroundColor:
          json['createOrEditPlaylistBackgroundColor']?.toString().toColor,
      discoverySuggestionItem:
          json['discoverySuggestionItem']?.toString().toColor,
      editMoreInformationBackgroundColor:
          json['editMoreInformationBackgroundColor']?.toString().toColor,
      positiveButtonDescriptionColor:
          json['positiveButtonDescriptionColor']?.toString().toColor,
      positiveButtonBackgroundColor:
          json['positiveButtonBackgroundColor']?.toString().toColor,
      negativeButtonTextColor:
          json['negativeButtonTextColor']?.toString().toColor,
      popupTextColor: json['popupTextColor']?.toString().toColor,
      popupNotNowTextColor: json['popupNotNowTextColor']?.toString().toColor,
      itemSelectedColor: json['itemSelectedColor']?.toString().toColor,
      itemMusicInfoTextColor:
          json['itemMusicInfoTextColor']?.toString().toColor,
      itemMusicOptionsIconColor:
          json['itemMusicOptionsIconColor']?.toString().toColor,
      itemMusicAddIconColor: json['itemMusicAddIconColor']?.toString().toColor,
      itemNumberAnimationColor:
          json['itemNumberAnimationColor']?.toString().toColor,
      recommendedUsernameMediaFontColor:
          json['recommendedUsernameMediaFontColor']?.toString().toColor,
      preRollFontBorderColor:
          json['preRollFontBorderColor']?.toString().toColor,
      vividCeruleanToBrandMedium:
          json['vividCeruleanToBrandMedium']?.toString().toColor,
      preSearchNewsSection: json['preSearchNewsSection']?.toString().toColor,
      preSearchNewsDate: json['preSearchNewsDate']?.toString().toColor,
      preSearchTitle: json['preSearchTitle']?.toString().toColor,
      preSearchIcons: json['preSearchIcons']?.toString().toColor,
      helpCenterTextColor: json['helpCenterTextColor']?.toString().toColor,
      helpCenterTitleColor: json['helpCenterTitleColor']?.toString().toColor,
      reportAppBarColor: json['reportAppBarColor']?.toString().toColor,
      reportAppBarTextColor: json['reportAppBarTextColor']?.toString().toColor,
      reportAppBarBackgroundColor:
          json['reportAppBarBackgroundColor']?.toString().toColor,
      reportProblemFieldTextColor:
          json['reportProblemFieldTextColor']?.toString().toColor,
      reportProblemTextStyleColor:
          json['reportProblemTextStyleColor']?.toString().toColor,
      reportProblemTextButtonColor:
          json['reportProblemTextButtonColor']?.toString().toColor,
      reportProblemErrorTextColor:
          json['reportProblemErrorTextColor']?.toString().toColor,
      reportProblemTitleTextColor:
          json['reportProblemTitleTextColor']?.toString().toColor,
      reportTileIconColor: json['reportTileIconColor']?.toString().toColor,
      reportDropdownIconColor:
          json['reportDropdownIconColor']?.toString().toColor,
      reportDropdownBorderColor:
          json['reportDropdownBorderColor']?.toString().toColor,
      reportDropdownHighlightColor:
          json['reportDropdownHighlightColor']?.toString().toColor,
      reportCheckBoxUnselectedColor:
          json['reportCheckBoxUnselectedColor']?.toString().toColor,
      recommendedItemFontColor:
          json['recommendedItemFontColor']?.toString().toColor,
      selectAllTextColor: json['selectAllTextColor']?.toString().toColor,
      successReportPageTextColor:
          json['successReportPageTextColor']?.toString().toColor,
      shareContentViewColor: json['shareContentViewColor']?.toString().toColor,
      smInkWellColor: json['smInkWellColor']?.toString().toColor,
      bubbleDeleteWidgetColor:
          json['bubbleDeleteWidgetColor']?.toString().toColor,
      libraryStylePremiumColor:
          json['libraryStylePremiumColor']?.toString().toColor,
      loginWithoutPassSendTextColor:
          json['loginWithoutPassSendTextColor']?.toString().toColor,
      myAlbumTextColor: json['myAlbumTextColor']?.toString().toColor,
      myAlbumButtonBorderColor:
          json['myAlbumButtonBorderColor']?.toString().toColor,
      myAlbumFillColor: json['myAlbumFillColor']?.toString().toColor,
      myPlaylistsPageFillColor:
          json['myPlaylistsPageFillColor']?.toString().toColor,
      playerPageButtonColor: json['playerPageButtonColor']?.toString().toColor,
      profileLoadedColor: json['profileLoadedColor']?.toString().toColor,
      topsPageLabelColor: json['topsPageLabelColor']?.toString().toColor,
      uploadButtonColor: json['uploadButtonColor']?.toString().toColor,
      uploadQuestionBackgroundColor:
          json['uploadQuestionBackgroundColor']?.toString().toColor,
      uploadTabColor: json['uploadTabColor']?.toString().toColor,
      usernameColor: json['usernameColor']?.toString().toColor,
      dateColor: json['dateColor']?.toString().toColor,
      hintCommentColor: json['hintCommentColor']?.toString().toColor,
      limitCharacterColor: json['limitCharacterColor']?.toString().toColor,
      borderInativeColor: json['borderInativeColor']?.toString().toColor,
      avatarColor: json['avatarColor']?.toString().toColor,
      bottomSheetWithIconsColor:
          json['bottomSheetWithIconsColor']?.toString().toColor,
      bottomSheetWithIconsTitleColor:
          json['bottomSheetWithIconsTitleColor']?.toString().toColor,
      dividerBottomSheetColor:
          json['dividerBottomSheetColor']?.toString().toColor,
      titleShareVertical: json['titleShareVertical']?.toString().toColor,
      trailingShareVertical: json['trailingShareVertical']?.toString().toColor,
      usernameShareVertical: json['usernameShareVertical']?.toString().toColor,
      moreShareIconColor: json['moreShareIconColor']?.toString().toColor,
      mediaSearchEmptyQueryColor:
          json['mediaSearchEmptyQueryColor']?.toString().toColor,
      mediaSearchWithoutPlaylist:
          json['mediaSearchWithoutPlaylist']?.toString().toColor,
      myPlaylistsTitlePlaylist:
          json['myPlaylistsTitlePlaylist']?.toString().toColor,
      myPlaylistsNumberOfMusics:
          json['myPlaylistsNumberOfMusics']?.toString().toColor,
      myPlaylistsIconButton: json['myPlaylistsIconButton']?.toString().toColor,
      myPlaylistsCursorColor:
          json['myPlaylistsCursorColor']?.toString().toColor,
      myPlaylistsIconSearch: json['myPlaylistsIconSearch']?.toString().toColor,
      myPlaylistsClearSearchButton:
          json['myPlaylistsClearSearchButton']?.toString().toColor,
      segmentedBubbleIconColor:
          json['segmentedBubbleIconColor']?.toString().toColor,
      segmentedBubbleTextColor:
          json['segmentedBubbleTextColor']?.toString().toColor,
      createPlaylistText: json['createPlaylistText']?.toString().toColor,
      createPlaylistTextFieldBorder:
          json['createPlaylistTextFieldBorder']?.toString().toColor,
      createPlaylistTextFieldHint:
          json['createPlaylistTextFieldHint']?.toString().toColor,
      editPlaylistTextFieldBorder:
          json['editPlaylistTextFieldBorder']?.toString().toColor,
      editPlaylistTextFieldHint:
          json['editPlaylistTextFieldHint']?.toString().toColor,
      editPlaylistWithoutMusicsBody:
          json['editPlaylistWithoutMusicsBody']?.toString().toColor,
      bottomSheetFilterTitleText:
          json['bottomSheetFilterTitleText']?.toString().toColor,
      bottomSheetFilterItemUnselectedText:
          json['bottomSheetFilterItemUnselectedText']?.toString().toColor,
      bottomSheetWithIconsOrderTitleText:
          json['bottomSheetWithIconsOrderTitleText']?.toString().toColor,
      bottomSheetWithIconsOrderItemText:
          json['bottomSheetWithIconsOrderItemText']?.toString().toColor,
      bottomSheetPremiumAccentColor:
          json['bottomSheetPremiumAccentColor']?.toString().toColor,
      bottomSheetPremiumHeaderTitleColor:
          json['bottomSheetPremiumHeaderTitleColor']?.toString().toColor,
      bottomSheetPremiumHeaderDescriptionColor:
          json['bottomSheetPremiumHeaderDescriptionColor']?.toString().toColor,
      playlistPageUsernameColor:
          json['playlistPageUsernameColor']?.toString().toColor,
      playlistEmptyPage: json['playlistEmptyPage']?.toString().toColor,
      lowPureToBrandPure: json['lowPureToBrandPure']?.toString().toColor,
      lowPureToLowMedium: json['lowPureToLowMedium']?.toString().toColor,
      highLightToLowPure: json['highLightToLowPure']?.toString().toColor,
      highPureToBrandMedium: json['highPureToBrandMedium']?.toString().toColor,
      highPureToBrandPure: json['highPureToBrandPure']?.toString().toColor,
      brandPureToHighPure: json['brandPureToHighPure']?.toString().toColor,
    );
  }

  @override
  ThemeExtension<SMStacThemeExtension> copyWith({
    Color? bottomAppBarColor,
    Color? selectedRowColor,
    Color? advertiseOrVerifyBottomSheetCTA,
    Color? advertiseOrVerifyBottomSheetDivider,
    Color? advertiseOrVerifyBottomSheetIconItem,
    Color? advertiseOrVerifyBottomSheetLaterTextButton,
    Color? albumCommentIconColor,
    Color? albumCommentTextColor,
    Color? mediaFavoriteIconColor,
    Color? albumOptionsIconColor,
    Color? albumDownloadIconColor,
    Color? albumPageDividerColor,
    Color? mediaNotReleasedHeaderTitle,
    Color? mediaNotReleasedBody,
    Color? mediaNotReleasedDivider,
    Color? mediaNotReleasedCTA,
    Color? albumInfoBottomSheetTitle,
    Color? albumInfoBottomSheetThumbnailTitle,
    Color? albumInfoBottomSheetThumbnailContent,
    Color? albumInfoBottomSheetPublishedTitle,
    Color? albumInfoBottomSheetPublishedContent,
    Color? albumInfoBottomSheetSizeTitle,
    Color? albumInfoBottomSheetSizeContent,
    Color? albumInfoBottomSheetMusicStyleTitle,
    Color? artistNameColor,
    Color? bannerLibraryColor,
    Color? chatUserMessageColor,
    Color? chatWriteMessageBackgroundColor,
    Color? chatWriteMessageTextAndFieldColor,
    Color? commonCardBackgroundColor,
    Color? createOrEditPlaylistBackgroundColor,
    Color? discoverySuggestionItem,
    Color? editMoreInformationBackgroundColor,
    Color? positiveButtonDescriptionColor,
    Color? positiveButtonBackgroundColor,
    Color? negativeButtonTextColor,
    Color? popupTextColor,
    Color? popupNotNowTextColor,
    Color? itemSelectedColor,
    Color? itemMusicInfoTextColor,
    Color? itemMusicOptionsIconColor,
    Color? itemMusicAddIconColor,
    Color? itemNumberAnimationColor,
    Color? recommendedUsernameMediaFontColor,
    Color? selectAllTextColor,
    Color? successReportPageTextColor,
    Color? shareContentViewColor,
    Color? smInkWellColor,
    Color? preRollFontBorderColor,
    Color? vividCeruleanToBrandMedium,
    Color? preSearchNewsSection,
    Color? preSearchNewsDate,
    Color? preSearchTitle,
    Color? preSearchIcons,
    Color? helpCenterTextColor,
    Color? helpCenterTitleColor,
    Color? reportAppBarColor,
    Color? reportAppBarTextColor,
    Color? reportAppBarBackgroundColor,
    Color? recommendedItemFontColor,
    Color? reportProblemFieldTextColor,
    Color? reportProblemTextStyleColor,
    Color? reportProblemTextButtonColor,
    Color? reportProblemErrorTextColor,
    Color? reportProblemTitleTextColor,
    Color? reportTileIconColor,
    Color? reportDropdownIconColor,
    Color? reportDropdownBorderColor,
    Color? reportDropdownHighlightColor,
    Color? reportCheckBoxUnselectedColor,
    Color? bubbleDeleteWidgetColor,
    Color? libraryStylePremiumColor,
    Color? loginButtonBorderEmailColor,
    Color? loginButtonBorderGoogleColor,
    Color? loginWithoutPassSendTextColor,
    Color? myAlbumTextColor,
    Color? myAlbumButtonBorderColor,
    Color? myAlbumFillColor,
    Color? myPlaylistsPageFillColor,
    Color? playerPageButtonColor,
    Color? profileLoadedColor,
    Color? topsPageLabelColor,
    Color? uploadButtonColor,
    Color? uploadQuestionBackgroundColor,
    Color? uploadTabColor,
    Color? usernameColor,
    Color? dateColor,
    Color? hintCommentColor,
    Color? limitCharacterColor,
    Color? borderInativeColor,
    Color? avatarColor,
    Color? bottomSheetWithIconsColor,
    Color? bottomSheetWithIconsTitleColor,
    Color? dividerBottomSheetColor,
    Color? titleShareVertical,
    Color? trailingShareVertical,
    Color? usernameShareVertical,
    Color? moreShareIconColor,
    Color? mediaSearchEmptyQueryColor,
    Color? mediaSearchWithoutPlaylist,
    Color? myPlaylistsTitlePlaylist,
    Color? myPlaylistsNumberOfMusics,
    Color? myPlaylistsIconButton,
    Color? myPlaylistsCursorColor,
    Color? myPlaylistsIconSearch,
    Color? myPlaylistsClearSearchButton,
    Color? segmentedBubbleIconColor,
    Color? segmentedBubbleTextColor,
    Color? createPlaylistText,
    Color? createPlaylistTextFieldBorder,
    Color? createPlaylistTextFieldHint,
    Color? editPlaylistTextFieldBorder,
    Color? editPlaylistTextFieldHint,
    Color? editPlaylistWithoutMusicsBody,
    Color? bottomSheetFilterTitleText,
    Color? bottomSheetFilterItemUnselectedText,
    Color? bottomSheetWithIconsOrderTitleText,
    Color? bottomSheetWithIconsOrderItemText,
    Color? bottomSheetPremiumAccentColor,
    Color? bottomSheetPremiumHeaderTitleColor,
    Color? bottomSheetPremiumHeaderDescriptionColor,
    Color? playlistPageUsernameColor,
    Color? playlistEmptyPage,
    Color? lowPureToBrandPure,
    Color? lowPureToLowMedium,
    Color? highLightToLowPure,
    Color? highPureToBrandMedium,
    Color? highPureToBrandPure,
    Color? brandPureToHighPure,
    Color? lowMediumToWhite,
    Color? lowPureToHighPure,
    Color? white15ToSpanishGrey50,
    Color? black26ToSpanishGrey50,
    Color? neutralHighLightToNeutralLowMedium,
    Color? highPureToBlack,
    Color? brightSilverToFilmProBlack,
  }) =>
      SMStacThemeExtension(
        squareCheckbox: squareCheckbox,
        bottomAppBarColor: bottomAppBarColor ?? this.bottomAppBarColor,
        selectedRowColor: selectedRowColor ?? this.selectedRowColor,
        advertiseOrVerifyBottomSheetCTA:
            advertiseOrVerifyBottomSheetCTA ?? advertiseOrVerifyBottomSheetCTA,
        advertiseOrVerifyBottomSheetDivider:
            advertiseOrVerifyBottomSheetDivider ??
                this.advertiseOrVerifyBottomSheetDivider,
        advertiseOrVerifyBottomSheetIconItem:
            advertiseOrVerifyBottomSheetIconItem ??
                this.advertiseOrVerifyBottomSheetIconItem,
        advertiseOrVerifyBottomSheetLaterTextButton:
            advertiseOrVerifyBottomSheetLaterTextButton ??
                this.advertiseOrVerifyBottomSheetLaterTextButton,
        albumCommentIconColor:
            albumCommentIconColor ?? this.albumCommentIconColor,
        albumCommentTextColor:
            albumCommentTextColor ?? this.albumCommentTextColor,
        mediaFavoriteIconColor:
            mediaFavoriteIconColor ?? this.mediaFavoriteIconColor,
        albumOptionsIconColor:
            albumOptionsIconColor ?? this.albumOptionsIconColor,
        albumDownloadIconColor:
            albumDownloadIconColor ?? this.albumDownloadIconColor,
        albumPageDividerColor:
            albumPageDividerColor ?? this.albumPageDividerColor,
        mediaNotReleasedHeaderTitle:
            mediaNotReleasedHeaderTitle ?? this.mediaNotReleasedHeaderTitle,
        mediaNotReleasedBody: mediaNotReleasedBody ?? this.mediaNotReleasedBody,
        mediaNotReleasedDivider:
            mediaNotReleasedDivider ?? this.mediaNotReleasedDivider,
        mediaNotReleasedCTA: mediaNotReleasedCTA ?? this.mediaNotReleasedCTA,
        albumInfoBottomSheetTitle:
            albumInfoBottomSheetTitle ?? this.albumInfoBottomSheetTitle,
        albumInfoBottomSheetThumbnailTitle:
            albumInfoBottomSheetThumbnailTitle ??
                this.albumInfoBottomSheetThumbnailTitle,
        albumInfoBottomSheetThumbnailContent:
            albumInfoBottomSheetThumbnailContent ??
                this.albumInfoBottomSheetThumbnailContent,
        albumInfoBottomSheetPublishedTitle:
            albumInfoBottomSheetPublishedTitle ??
                this.albumInfoBottomSheetPublishedTitle,
        albumInfoBottomSheetPublishedContent:
            albumInfoBottomSheetPublishedContent ??
                this.albumInfoBottomSheetPublishedContent,
        albumInfoBottomSheetSizeTitle:
            albumInfoBottomSheetSizeTitle ?? this.albumInfoBottomSheetSizeTitle,
        albumInfoBottomSheetSizeContent: albumInfoBottomSheetSizeContent ??
            this.albumInfoBottomSheetSizeContent,
        albumInfoBottomSheetMusicStyleTitle:
            albumInfoBottomSheetMusicStyleTitle ??
                this.albumInfoBottomSheetMusicStyleTitle,
        artistNameColor: artistNameColor ?? this.artistNameColor,
        bannerLibraryColor: bannerLibraryColor ?? this.bannerLibraryColor,
        chatUserMessageColor: chatUserMessageColor ?? this.chatUserMessageColor,
        chatWriteMessageBackgroundColor: chatWriteMessageBackgroundColor ??
            this.chatWriteMessageBackgroundColor,
        chatWriteMessageTextAndFieldColor: chatWriteMessageTextAndFieldColor ??
            this.chatWriteMessageTextAndFieldColor,
        commonCardBackgroundColor:
            commonCardBackgroundColor ?? this.commonCardBackgroundColor,
        createOrEditPlaylistBackgroundColor:
            createOrEditPlaylistBackgroundColor ??
                this.createOrEditPlaylistBackgroundColor,
        discoverySuggestionItem:
            discoverySuggestionItem ?? this.discoverySuggestionItem,
        editMoreInformationBackgroundColor:
            editMoreInformationBackgroundColor ??
                this.editMoreInformationBackgroundColor,
        positiveButtonDescriptionColor: positiveButtonDescriptionColor ??
            this.positiveButtonDescriptionColor,
        positiveButtonBackgroundColor:
            positiveButtonBackgroundColor ?? this.positiveButtonBackgroundColor,
        negativeButtonTextColor:
            negativeButtonTextColor ?? this.negativeButtonTextColor,
        popupTextColor: popupTextColor ?? this.popupTextColor,
        popupNotNowTextColor: popupNotNowTextColor ?? this.popupNotNowTextColor,
        itemSelectedColor: itemSelectedColor ?? this.itemSelectedColor,
        itemMusicInfoTextColor:
            itemMusicInfoTextColor ?? this.itemMusicInfoTextColor,
        itemMusicOptionsIconColor:
            itemMusicOptionsIconColor ?? this.itemMusicOptionsIconColor,
        itemMusicAddIconColor:
            itemMusicAddIconColor ?? this.itemMusicAddIconColor,
        itemNumberAnimationColor:
            itemNumberAnimationColor ?? this.itemNumberAnimationColor,
        recommendedUsernameMediaFontColor: recommendedUsernameMediaFontColor ??
            this.recommendedUsernameMediaFontColor,
        preRollFontBorderColor:
            preRollFontBorderColor ?? preRollFontBorderColor,
        vividCeruleanToBrandMedium:
            vividCeruleanToBrandMedium ?? vividCeruleanToBrandMedium,
        preSearchNewsSection: preSearchNewsSection ?? preSearchNewsSection,
        preSearchNewsDate: preSearchNewsDate ?? preSearchNewsDate,
        preSearchTitle: preSearchTitle ?? preSearchTitle,
        preSearchIcons: preSearchIcons ?? preSearchIcons,
        helpCenterTextColor: helpCenterTextColor ?? helpCenterTextColor,
        helpCenterTitleColor: helpCenterTitleColor ?? helpCenterTitleColor,
        reportAppBarColor: reportAppBarColor ?? reportAppBarColor,
        reportAppBarTextColor: reportAppBarTextColor ?? reportAppBarTextColor,
        reportAppBarBackgroundColor:
            reportAppBarBackgroundColor ?? reportAppBarBackgroundColor,
        recommendedItemFontColor:
            recommendedItemFontColor ?? recommendedItemFontColor,
        selectAllTextColor: selectAllTextColor ?? this.selectAllTextColor,
        successReportPageTextColor:
            successReportPageTextColor ?? successReportPageTextColor,
        shareContentViewColor: shareContentViewColor ?? shareContentViewColor,
        smInkWellColor: smInkWellColor ?? smInkWellColor,
        reportProblemFieldTextColor:
            reportProblemFieldTextColor ?? reportProblemFieldTextColor,
        reportProblemTextStyleColor:
            reportProblemTextStyleColor ?? reportProblemTextStyleColor,
        reportProblemTextButtonColor:
            reportProblemTextButtonColor ?? reportProblemTextButtonColor,
        reportProblemErrorTextColor:
            reportProblemErrorTextColor ?? reportProblemErrorTextColor,
        reportProblemTitleTextColor:
            reportProblemTitleTextColor ?? reportProblemTitleTextColor,
        reportTileIconColor: reportTileIconColor ?? reportTileIconColor,
        reportDropdownIconColor:
            reportDropdownIconColor ?? reportDropdownIconColor,
        reportDropdownBorderColor:
            reportDropdownBorderColor ?? reportDropdownBorderColor,
        reportDropdownHighlightColor:
            reportDropdownHighlightColor ?? reportDropdownHighlightColor,
        reportCheckBoxUnselectedColor:
            reportCheckBoxUnselectedColor ?? reportCheckBoxUnselectedColor,
        bubbleDeleteWidgetColor:
            bubbleDeleteWidgetColor ?? bubbleDeleteWidgetColor,
        libraryStylePremiumColor:
            libraryStylePremiumColor ?? libraryStylePremiumColor,
        loginWithoutPassSendTextColor:
            loginWithoutPassSendTextColor ?? loginWithoutPassSendTextColor,
        myAlbumTextColor: myAlbumTextColor ?? myAlbumTextColor,
        myAlbumButtonBorderColor:
            myAlbumButtonBorderColor ?? myAlbumButtonBorderColor,
        myAlbumFillColor: myAlbumFillColor ?? myAlbumFillColor,
        myPlaylistsPageFillColor:
            myPlaylistsPageFillColor ?? myPlaylistsPageFillColor,
        playerPageButtonColor: playerPageButtonColor ?? playerPageButtonColor,
        profileLoadedColor: profileLoadedColor ?? profileLoadedColor,
        topsPageLabelColor: topsPageLabelColor ?? topsPageLabelColor,
        uploadButtonColor: uploadButtonColor ?? uploadButtonColor,
        uploadQuestionBackgroundColor:
            uploadQuestionBackgroundColor ?? uploadQuestionBackgroundColor,
        uploadTabColor: uploadTabColor ?? uploadTabColor,
        usernameColor: usernameColor ?? usernameColor,
        dateColor: dateColor ?? dateColor,
        hintCommentColor: hintCommentColor ?? hintCommentColor,
        limitCharacterColor: limitCharacterColor ?? limitCharacterColor,
        borderInativeColor: borderInativeColor ?? borderInativeColor,
        avatarColor: avatarColor ?? avatarColor,
        bottomSheetWithIconsColor:
            bottomSheetWithIconsColor ?? bottomSheetWithIconsColor,
        bottomSheetWithIconsTitleColor:
            bottomSheetWithIconsTitleColor ?? bottomSheetWithIconsTitleColor,
        dividerBottomSheetColor:
            dividerBottomSheetColor ?? dividerBottomSheetColor,
        titleShareVertical: titleShareVertical ?? titleShareVertical,
        trailingShareVertical: trailingShareVertical ?? trailingShareVertical,
        usernameShareVertical: usernameShareVertical ?? usernameShareVertical,
        moreShareIconColor: moreShareIconColor ?? moreShareIconColor,
        mediaSearchEmptyQueryColor:
            mediaSearchEmptyQueryColor ?? mediaSearchEmptyQueryColor,
        mediaSearchWithoutPlaylist:
            mediaSearchWithoutPlaylist ?? mediaSearchWithoutPlaylist,
        myPlaylistsTitlePlaylist:
            myPlaylistsTitlePlaylist ?? myPlaylistsTitlePlaylist,
        myPlaylistsNumberOfMusics:
            myPlaylistsNumberOfMusics ?? myPlaylistsNumberOfMusics,
        myPlaylistsIconButton: myPlaylistsIconButton ?? myPlaylistsIconButton,
        myPlaylistsClearSearchButton:
            myPlaylistsClearSearchButton ?? myPlaylistsClearSearchButton,
        myPlaylistsCursorColor:
            myPlaylistsCursorColor ?? myPlaylistsCursorColor,
        myPlaylistsIconSearch: myPlaylistsIconSearch ?? myPlaylistsIconSearch,
        segmentedBubbleIconColor:
            segmentedBubbleIconColor ?? segmentedBubbleIconColor,
        segmentedBubbleTextColor:
            segmentedBubbleTextColor ?? segmentedBubbleTextColor,
        createPlaylistText: createPlaylistText ?? createPlaylistText,
        createPlaylistTextFieldBorder:
            createPlaylistTextFieldBorder ?? createPlaylistTextFieldBorder,
        createPlaylistTextFieldHint:
            createPlaylistTextFieldHint ?? createPlaylistTextFieldHint,
        editPlaylistTextFieldBorder:
            editPlaylistTextFieldBorder ?? editPlaylistTextFieldBorder,
        editPlaylistTextFieldHint:
            editPlaylistTextFieldHint ?? editPlaylistTextFieldHint,
        editPlaylistWithoutMusicsBody:
            editPlaylistWithoutMusicsBody ?? editPlaylistWithoutMusicsBody,
        bottomSheetFilterTitleText:
            bottomSheetFilterTitleText ?? bottomSheetFilterTitleText,
        bottomSheetFilterItemUnselectedText:
            bottomSheetFilterItemUnselectedText ??
                bottomSheetFilterItemUnselectedText,
        bottomSheetWithIconsOrderTitleText:
            bottomSheetWithIconsOrderTitleText ??
                bottomSheetWithIconsOrderTitleText,
        bottomSheetWithIconsOrderItemText: bottomSheetWithIconsOrderItemText ??
            bottomSheetWithIconsOrderItemText,
        bottomSheetPremiumAccentColor:
            bottomSheetPremiumAccentColor ?? bottomSheetPremiumAccentColor,
        bottomSheetPremiumHeaderTitleColor:
            bottomSheetPremiumHeaderTitleColor ??
                bottomSheetPremiumHeaderTitleColor,
        bottomSheetPremiumHeaderDescriptionColor:
            bottomSheetPremiumHeaderDescriptionColor ??
                bottomSheetPremiumHeaderDescriptionColor,
        playlistPageUsernameColor:
            playlistPageUsernameColor ?? playlistPageUsernameColor,
        playlistEmptyPage: playlistEmptyPage ?? playlistEmptyPage,
        lowPureToBrandPure: lowPureToBrandPure ?? this.lowPureToBrandPure,
        lowPureToLowMedium: lowPureToLowMedium ?? lowPureToLowMedium,
        highLightToLowPure: highLightToLowPure ?? highLightToLowPure,
        highPureToBrandMedium: highPureToBrandMedium ?? highPureToBrandMedium,
        highPureToBrandPure: highPureToBrandPure ?? highPureToBrandPure,
        brandPureToHighPure: brandPureToHighPure ?? this.brandPureToHighPure,
        lowMediumToWhite: lowMediumToWhite ?? this.lowMediumToWhite,
        lowPureToHighPure: lowPureToHighPure ?? this.lowPureToHighPure,
        white15ToSpanishGrey50:
            white15ToSpanishGrey50 ?? this.white15ToSpanishGrey50,
        black26ToSpanishGrey50:
            black26ToSpanishGrey50 ?? this.black26ToSpanishGrey50,
        neutralHighLightToNeutralLowMedium:
            neutralHighLightToNeutralLowMedium ??
                this.neutralHighLightToNeutralLowMedium,
        highPureToBlack: highPureToBlack ?? this.highPureToBlack,
        brightSilverToFilmProBlack:
            brightSilverToFilmProBlack ?? this.brightSilverToFilmProBlack,
      );

  @override
  ThemeExtension<SMStacThemeExtension> lerp(
    ThemeExtension<SMStacThemeExtension>? other,
    double t,
  ) {
    if (other is! SMStacThemeExtension) {
      return this;
    }
    return SMStacThemeExtension(
      squareCheckbox: CheckboxThemeData.lerp(
        squareCheckbox,
        other.squareCheckbox,
        t,
      ),
      highPureToBlack: Color.lerp(
        highPureToBlack,
        other.highPureToBlack,
        t,
      ),
      bottomAppBarColor: Color.lerp(
        bottomAppBarColor,
        other.bottomAppBarColor,
        t,
      ),
      selectedRowColor: Color.lerp(
        selectedRowColor,
        other.selectedRowColor,
        t,
      ),
      advertiseOrVerifyBottomSheetCTA: Color.lerp(
        advertiseOrVerifyBottomSheetCTA,
        other.advertiseOrVerifyBottomSheetCTA,
        t,
      ),
      advertiseOrVerifyBottomSheetDivider: Color.lerp(
        advertiseOrVerifyBottomSheetDivider,
        other.advertiseOrVerifyBottomSheetDivider,
        t,
      ),
      advertiseOrVerifyBottomSheetIconItem: Color.lerp(
        advertiseOrVerifyBottomSheetIconItem,
        other.advertiseOrVerifyBottomSheetIconItem,
        t,
      ),
      advertiseOrVerifyBottomSheetLaterTextButton: Color.lerp(
        advertiseOrVerifyBottomSheetLaterTextButton,
        other.advertiseOrVerifyBottomSheetLaterTextButton,
        t,
      ),
      albumCommentIconColor: Color.lerp(
        albumCommentIconColor,
        other.albumCommentIconColor,
        t,
      ),
      albumCommentTextColor: Color.lerp(
        albumCommentTextColor,
        other.albumCommentTextColor,
        t,
      ),
      mediaFavoriteIconColor: Color.lerp(
        mediaFavoriteIconColor,
        other.mediaFavoriteIconColor,
        t,
      ),
      albumOptionsIconColor: Color.lerp(
        albumOptionsIconColor,
        other.albumOptionsIconColor,
        t,
      ),
      albumDownloadIconColor: Color.lerp(
        albumDownloadIconColor,
        other.albumDownloadIconColor,
        t,
      ),
      albumPageDividerColor: Color.lerp(
        albumPageDividerColor,
        other.albumPageDividerColor,
        t,
      ),
      mediaNotReleasedHeaderTitle: Color.lerp(
        mediaNotReleasedHeaderTitle,
        other.mediaNotReleasedHeaderTitle,
        t,
      ),
      mediaNotReleasedBody: Color.lerp(
        mediaNotReleasedBody,
        other.mediaNotReleasedBody,
        t,
      ),
      mediaNotReleasedDivider: Color.lerp(
        mediaNotReleasedDivider,
        other.mediaNotReleasedDivider,
        t,
      ),
      mediaNotReleasedCTA: Color.lerp(
        mediaNotReleasedCTA,
        other.mediaNotReleasedCTA,
        t,
      ),
      brightSilverToFilmProBlack: Color.lerp(
        brightSilverToFilmProBlack,
        other.brightSilverToFilmProBlack,
        t,
      ),
      albumInfoBottomSheetTitle: Color.lerp(
        albumInfoBottomSheetTitle,
        other.albumInfoBottomSheetTitle,
        t,
      ),
      albumInfoBottomSheetThumbnailTitle: Color.lerp(
        albumInfoBottomSheetThumbnailTitle,
        other.albumInfoBottomSheetThumbnailTitle,
        t,
      ),
      albumInfoBottomSheetThumbnailContent: Color.lerp(
        albumInfoBottomSheetThumbnailContent,
        other.albumInfoBottomSheetThumbnailContent,
        t,
      ),
      albumInfoBottomSheetPublishedTitle: Color.lerp(
        albumInfoBottomSheetPublishedTitle,
        other.albumInfoBottomSheetPublishedTitle,
        t,
      ),
      albumInfoBottomSheetPublishedContent: Color.lerp(
        albumInfoBottomSheetPublishedContent,
        other.albumInfoBottomSheetPublishedContent,
        t,
      ),
      albumInfoBottomSheetSizeTitle: Color.lerp(
        albumInfoBottomSheetSizeTitle,
        other.albumInfoBottomSheetSizeTitle,
        t,
      ),
      albumInfoBottomSheetSizeContent: Color.lerp(
        albumInfoBottomSheetSizeContent,
        other.albumInfoBottomSheetSizeContent,
        t,
      ),
      albumInfoBottomSheetMusicStyleTitle: Color.lerp(
        albumInfoBottomSheetMusicStyleTitle,
        other.albumInfoBottomSheetMusicStyleTitle,
        t,
      ),
      artistNameColor: Color.lerp(
        artistNameColor,
        other.artistNameColor,
        t,
      ),
      bannerLibraryColor: Color.lerp(
        bannerLibraryColor,
        other.bannerLibraryColor,
        t,
      ),
      chatUserMessageColor: Color.lerp(
        chatUserMessageColor,
        other.chatUserMessageColor,
        t,
      ),
      chatWriteMessageBackgroundColor: Color.lerp(
        chatWriteMessageBackgroundColor,
        other.chatWriteMessageBackgroundColor,
        t,
      ),
      chatWriteMessageTextAndFieldColor: Color.lerp(
        chatWriteMessageTextAndFieldColor,
        other.chatWriteMessageTextAndFieldColor,
        t,
      ),
      commonCardBackgroundColor: Color.lerp(
        commonCardBackgroundColor,
        other.commonCardBackgroundColor,
        t,
      ),
      createOrEditPlaylistBackgroundColor: Color.lerp(
        createOrEditPlaylistBackgroundColor,
        other.createOrEditPlaylistBackgroundColor,
        t,
      ),
      discoverySuggestionItem: Color.lerp(
        discoverySuggestionItem,
        other.discoverySuggestionItem,
        t,
      ),
      editMoreInformationBackgroundColor: Color.lerp(
        editMoreInformationBackgroundColor,
        other.editMoreInformationBackgroundColor,
        t,
      ),
      positiveButtonDescriptionColor: Color.lerp(
        positiveButtonDescriptionColor,
        other.positiveButtonDescriptionColor,
        t,
      ),
      positiveButtonBackgroundColor: Color.lerp(
        positiveButtonBackgroundColor,
        other.positiveButtonBackgroundColor,
        t,
      ),
      negativeButtonTextColor: Color.lerp(
        negativeButtonTextColor,
        other.negativeButtonTextColor,
        t,
      ),
      popupTextColor: Color.lerp(
        popupTextColor,
        other.popupTextColor,
        t,
      ),
      popupNotNowTextColor: Color.lerp(
        popupNotNowTextColor,
        other.popupNotNowTextColor,
        t,
      ),
      itemSelectedColor: Color.lerp(
        itemSelectedColor,
        other.itemSelectedColor,
        t,
      ),
      itemMusicInfoTextColor: Color.lerp(
        itemMusicInfoTextColor,
        other.itemMusicInfoTextColor,
        t,
      ),
      itemMusicOptionsIconColor: Color.lerp(
        itemMusicOptionsIconColor,
        other.itemMusicOptionsIconColor,
        t,
      ),
      itemMusicAddIconColor: Color.lerp(
        itemMusicAddIconColor,
        other.itemMusicAddIconColor,
        t,
      ),
      itemNumberAnimationColor: Color.lerp(
        itemNumberAnimationColor,
        other.itemNumberAnimationColor,
        t,
      ),
      preRollFontBorderColor: Color.lerp(
        preRollFontBorderColor,
        other.preRollFontBorderColor,
        t,
      ),
      vividCeruleanToBrandMedium: Color.lerp(
        vividCeruleanToBrandMedium,
        other.vividCeruleanToBrandMedium,
        t,
      ),
      preSearchNewsSection: Color.lerp(
        preSearchNewsSection,
        other.preSearchNewsSection,
        t,
      ),
      preSearchNewsDate: Color.lerp(
        preSearchNewsDate,
        other.preSearchNewsDate,
        t,
      ),
      preSearchTitle: Color.lerp(
        preSearchTitle,
        other.preSearchTitle,
        t,
      ),
      preSearchIcons: Color.lerp(
        preSearchIcons,
        other.preSearchIcons,
        t,
      ),
      helpCenterTextColor: Color.lerp(
        helpCenterTextColor,
        other.helpCenterTextColor,
        t,
      ),
      helpCenterTitleColor: Color.lerp(
        helpCenterTitleColor,
        other.helpCenterTitleColor,
        t,
      ),
      reportAppBarColor: Color.lerp(
        reportAppBarColor,
        other.reportAppBarColor,
        t,
      ),
      reportAppBarTextColor: Color.lerp(
        reportAppBarTextColor,
        other.reportAppBarTextColor,
        t,
      ),
      reportAppBarBackgroundColor: Color.lerp(
        reportAppBarBackgroundColor,
        other.reportAppBarBackgroundColor,
        t,
      ),
      recommendedItemFontColor: Color.lerp(
        recommendedItemFontColor,
        other.recommendedItemFontColor,
        t,
      ),
      recommendedUsernameMediaFontColor: Color.lerp(
        recommendedUsernameMediaFontColor,
        other.recommendedUsernameMediaFontColor,
        t,
      ),
      selectAllTextColor: Color.lerp(
        selectAllTextColor,
        other.selectAllTextColor,
        t,
      ),
      successReportPageTextColor: Color.lerp(
        successReportPageTextColor,
        other.successReportPageTextColor,
        t,
      ),
      shareContentViewColor: Color.lerp(
        shareContentViewColor,
        other.shareContentViewColor,
        t,
      ),
      smInkWellColor: Color.lerp(
        smInkWellColor,
        other.smInkWellColor,
        t,
      ),
      reportProblemFieldTextColor: Color.lerp(
        reportProblemFieldTextColor,
        other.reportProblemFieldTextColor,
        t,
      ),
      reportProblemTextStyleColor: Color.lerp(
        reportProblemTextStyleColor,
        other.reportProblemTextStyleColor,
        t,
      ),
      reportProblemTextButtonColor: Color.lerp(
        reportProblemTextButtonColor,
        other.reportProblemTextButtonColor,
        t,
      ),
      reportProblemErrorTextColor: Color.lerp(
        reportProblemErrorTextColor,
        other.reportProblemErrorTextColor,
        t,
      ),
      reportProblemTitleTextColor: Color.lerp(
        reportProblemTitleTextColor,
        other.reportProblemTitleTextColor,
        t,
      ),
      reportDropdownIconColor: Color.lerp(
        reportDropdownIconColor,
        other.reportDropdownIconColor,
        t,
      ),
      reportDropdownBorderColor: Color.lerp(
        reportDropdownBorderColor,
        other.reportDropdownBorderColor,
        t,
      ),
      reportDropdownHighlightColor: Color.lerp(
        reportDropdownHighlightColor,
        other.reportDropdownHighlightColor,
        t,
      ),
      reportCheckBoxUnselectedColor: Color.lerp(
        reportCheckBoxUnselectedColor,
        other.reportCheckBoxUnselectedColor,
        t,
      ),
      reportTileIconColor: Color.lerp(
        reportTileIconColor,
        other.reportTileIconColor,
        t,
      ),
      bubbleDeleteWidgetColor: Color.lerp(
        bubbleDeleteWidgetColor,
        other.bubbleDeleteWidgetColor,
        t,
      ),
      libraryStylePremiumColor: Color.lerp(
        libraryStylePremiumColor,
        other.libraryStylePremiumColor,
        t,
      ),
      loginWithoutPassSendTextColor: Color.lerp(
        loginWithoutPassSendTextColor,
        other.loginWithoutPassSendTextColor,
        t,
      ),
      myAlbumTextColor: Color.lerp(
        myAlbumTextColor,
        other.myAlbumTextColor,
        t,
      ),
      myAlbumButtonBorderColor: Color.lerp(
        myAlbumButtonBorderColor,
        other.myAlbumButtonBorderColor,
        t,
      ),
      myAlbumFillColor: Color.lerp(
        myAlbumFillColor,
        other.myAlbumFillColor,
        t,
      ),
      myPlaylistsPageFillColor: Color.lerp(
        myPlaylistsPageFillColor,
        other.myPlaylistsPageFillColor,
        t,
      ),
      playerPageButtonColor: Color.lerp(
        playerPageButtonColor,
        other.playerPageButtonColor,
        t,
      ),
      profileLoadedColor: Color.lerp(
        profileLoadedColor,
        other.profileLoadedColor,
        t,
      ),
      topsPageLabelColor: Color.lerp(
        topsPageLabelColor,
        other.topsPageLabelColor,
        t,
      ),
      uploadButtonColor: Color.lerp(
        uploadButtonColor,
        other.uploadButtonColor,
        t,
      ),
      uploadQuestionBackgroundColor: Color.lerp(
        uploadQuestionBackgroundColor,
        other.uploadQuestionBackgroundColor,
        t,
      ),
      uploadTabColor: Color.lerp(
        uploadTabColor,
        other.uploadTabColor,
        t,
      ),
      usernameColor: Color.lerp(
        usernameColor,
        other.usernameColor,
        t,
      ),
      dateColor: Color.lerp(
        dateColor,
        other.dateColor,
        t,
      ),
      hintCommentColor: Color.lerp(
        hintCommentColor,
        other.hintCommentColor,
        t,
      ),
      limitCharacterColor: Color.lerp(
        limitCharacterColor,
        other.limitCharacterColor,
        t,
      ),
      borderInativeColor: Color.lerp(
        borderInativeColor,
        other.borderInativeColor,
        t,
      ),
      avatarColor: Color.lerp(
        avatarColor,
        other.avatarColor,
        t,
      ),
      bottomSheetWithIconsColor: Color.lerp(
        bottomSheetWithIconsColor,
        other.bottomSheetWithIconsColor,
        t,
      ),
      bottomSheetWithIconsTitleColor: Color.lerp(
        bottomSheetWithIconsTitleColor,
        other.bottomSheetWithIconsTitleColor,
        t,
      ),
      dividerBottomSheetColor: Color.lerp(
        dividerBottomSheetColor,
        other.dividerBottomSheetColor,
        t,
      ),
      titleShareVertical: Color.lerp(
        titleShareVertical,
        other.titleShareVertical,
        t,
      ),
      trailingShareVertical: Color.lerp(
        trailingShareVertical,
        other.trailingShareVertical,
        t,
      ),
      usernameShareVertical: Color.lerp(
        usernameShareVertical,
        other.usernameShareVertical,
        t,
      ),
      moreShareIconColor: Color.lerp(
        moreShareIconColor,
        other.moreShareIconColor,
        t,
      ),
      mediaSearchEmptyQueryColor: Color.lerp(
        mediaSearchEmptyQueryColor,
        other.mediaSearchEmptyQueryColor,
        t,
      ),
      mediaSearchWithoutPlaylist: Color.lerp(
        mediaSearchWithoutPlaylist,
        other.mediaSearchWithoutPlaylist,
        t,
      ),
      myPlaylistsTitlePlaylist: Color.lerp(
        myPlaylistsTitlePlaylist,
        other.myPlaylistsTitlePlaylist,
        t,
      ),
      myPlaylistsNumberOfMusics: Color.lerp(
        myPlaylistsNumberOfMusics,
        other.myPlaylistsNumberOfMusics,
        t,
      ),
      myPlaylistsIconButton: Color.lerp(
        myPlaylistsIconButton,
        other.myPlaylistsIconButton,
        t,
      ),
      myPlaylistsClearSearchButton: Color.lerp(
        myPlaylistsClearSearchButton,
        other.myPlaylistsClearSearchButton,
        t,
      ),
      myPlaylistsCursorColor: Color.lerp(
        myPlaylistsCursorColor,
        other.myPlaylistsCursorColor,
        t,
      ),
      myPlaylistsIconSearch: Color.lerp(
        myPlaylistsIconSearch,
        other.myPlaylistsIconSearch,
        t,
      ),
      segmentedBubbleIconColor: Color.lerp(
        segmentedBubbleIconColor,
        other.segmentedBubbleIconColor,
        t,
      ),
      segmentedBubbleTextColor: Color.lerp(
        segmentedBubbleTextColor,
        other.segmentedBubbleTextColor,
        t,
      ),
      createPlaylistText: Color.lerp(
        createPlaylistText,
        other.createPlaylistText,
        t,
      ),
      createPlaylistTextFieldBorder: Color.lerp(
        createPlaylistTextFieldBorder,
        other.createPlaylistTextFieldBorder,
        t,
      ),
      createPlaylistTextFieldHint: Color.lerp(
        createPlaylistTextFieldHint,
        other.createPlaylistTextFieldHint,
        t,
      ),
      editPlaylistTextFieldBorder: Color.lerp(
        editPlaylistTextFieldBorder,
        other.editPlaylistTextFieldBorder,
        t,
      ),
      editPlaylistTextFieldHint: Color.lerp(
        editPlaylistTextFieldHint,
        other.editPlaylistTextFieldHint,
        t,
      ),
      editPlaylistWithoutMusicsBody: Color.lerp(
        editPlaylistWithoutMusicsBody,
        other.editPlaylistWithoutMusicsBody,
        t,
      ),
      bottomSheetFilterTitleText: Color.lerp(
        bottomSheetFilterTitleText,
        other.bottomSheetFilterTitleText,
        t,
      ),
      bottomSheetFilterItemUnselectedText: Color.lerp(
        bottomSheetFilterItemUnselectedText,
        other.bottomSheetFilterItemUnselectedText,
        t,
      ),
      bottomSheetWithIconsOrderTitleText: Color.lerp(
        bottomSheetWithIconsOrderTitleText,
        other.bottomSheetWithIconsOrderTitleText,
        t,
      ),
      bottomSheetWithIconsOrderItemText: Color.lerp(
        bottomSheetWithIconsOrderItemText,
        other.bottomSheetWithIconsOrderItemText,
        t,
      ),
      bottomSheetPremiumAccentColor: Color.lerp(
        bottomSheetPremiumAccentColor,
        other.bottomSheetPremiumAccentColor,
        t,
      ),
      bottomSheetPremiumHeaderTitleColor: Color.lerp(
        bottomSheetPremiumHeaderTitleColor,
        other.bottomSheetPremiumHeaderTitleColor,
        t,
      ),
      bottomSheetPremiumHeaderDescriptionColor: Color.lerp(
        bottomSheetPremiumHeaderDescriptionColor,
        other.bottomSheetPremiumHeaderDescriptionColor,
        t,
      ),
      playlistPageUsernameColor: Color.lerp(
        playlistPageUsernameColor,
        other.playlistPageUsernameColor,
        t,
      ),
      playlistEmptyPage: Color.lerp(
        playlistEmptyPage,
        other.playlistEmptyPage,
        t,
      ),
      lowPureToBrandPure: Color.lerp(
        lowPureToBrandPure,
        other.lowPureToBrandPure,
        t,
      ),
      lowPureToLowMedium: Color.lerp(
        lowPureToLowMedium,
        other.lowPureToLowMedium,
        t,
      ),
      highLightToLowPure: Color.lerp(
        highLightToLowPure,
        other.highLightToLowPure,
        t,
      ),
      highPureToBrandMedium: Color.lerp(
        highPureToBrandMedium,
        other.highPureToBrandMedium,
        t,
      ),
      highPureToBrandPure: Color.lerp(
        highPureToBrandPure,
        other.highPureToBrandPure,
        t,
      ),
      brandPureToHighPure: Color.lerp(
        brandPureToHighPure,
        other.brandPureToHighPure,
        t,
      ),
      lowMediumToWhite: Color.lerp(
        lowMediumToWhite,
        other.lowMediumToWhite,
        t,
      ),
      lowPureToHighPure: Color.lerp(
        lowPureToHighPure,
        other.lowPureToHighPure,
        t,
      ),
      white15ToSpanishGrey50: Color.lerp(
        white15ToSpanishGrey50,
        other.white15ToSpanishGrey50,
        t,
      ),
      black26ToSpanishGrey50: Color.lerp(
        black26ToSpanishGrey50,
        other.black26ToSpanishGrey50,
        t,
      ),
      neutralHighLightToNeutralLowMedium: Color.lerp(
        neutralHighLightToNeutralLowMedium,
        other.neutralHighLightToNeutralLowMedium,
        t,
      ),
    );
  }
}

extension SMColorExtension on String {
  String? get removeHash => replaceFirst('#', '');
  Color? get toColor => Color(
        int.parse(
          switch (removeHash!.length) {
            6 => '0xFF$removeHash',
            8 => '0x$removeHash',
            10 => removeHash!,
            _ => '0x00000000',
          },
        ),
      );
}

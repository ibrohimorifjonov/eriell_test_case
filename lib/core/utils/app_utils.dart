import 'package:flutter/material.dart';


class AppUtils {
  AppUtils._();



  /// box

  static const kBoxWith4 = SizedBox(width: 4);
  static const kBoxWith8 = SizedBox(width: 8);
  static const kBoxWith12 = SizedBox(width: 12);

  /// divider
  static const kDivider = Divider(height: 1, thickness: 1);
  static const kDividerNo = Divider();
  static const kPad16Divider = Divider(
    height: 1,
    thickness: 1,
    indent: 16,
  );
  static const kPadHor16Divider = ColoredBox(
    color: Colors.white,
    child: Divider(
      height: 1,
      thickness: 1,
      endIndent: 16,
      indent: 16,
    ),
  );
  static const kPadHor16Ver16Divider = ColoredBox(
    color: Colors.white,
    child: Padding(
      padding: kPaddingVer16,
      child: Divider(
        height: 1,
        thickness: 1,
        endIndent: 16,
        indent: 16,
      ),
    ),
  );
  static const kPad52Divider = ColoredBox(
    color: Colors.white,
    child: Divider(
      height: 1,
      thickness: 1,
      indent: 52,
    ),
  );
  static const kPad58Divider = ColoredBox(
    color: Colors.white,
    child: Divider(
      height: 1,
      thickness: 1,
      indent: 58,
    ),
  );
  static const kPad68Divider = ColoredBox(
    color: Colors.white,
    child: Divider(
      height: 1,
      thickness: 1,
      indent: 68,
    ),
  );
  static const kPad64Divider = ColoredBox(
    color: Colors.white,
    child: Divider(
      height: 1,
      thickness: 1,
      indent: 64,
    ),
  );
  static const kPad80Divider = ColoredBox(
    color: Colors.white,
    child: Divider(
      height: 1,
      thickness: 1,
      indent: 72,
      endIndent: 16,
    ),
  );
  static const kPad12Divider = ColoredBox(
    color: Colors.white,
    child: Divider(
      height: 1,
      thickness: 1,
      indent: 12,
      endIndent: 12,
    ),
  );
  static const kPad8Divider = ColoredBox(
    color: Colors.white,
    child: Divider(
      height: 1,
      thickness: 1,
      indent: 8,
      endIndent: 8,
    ),
  );

  static const kVer8Divider = Padding(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: Divider(height: 1, thickness: 1),
  );

  static const kVer12Divider = Padding(
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Divider(height: 1, thickness: 1),
  );

  /// spacer
  static const kSpacer = Spacer();

  /// Sizedbox
  static const kBox = SizedBox.shrink();
  static const kBoxHeight2 = SizedBox(height: 2);
  static const kBoxHeight4 = SizedBox(height: 4);
  static const kBoxHeight6 = SizedBox(height: 6);
  static const kBoxHeight8 = SizedBox(height: 8);
  static const kBoxHeight7 = SizedBox(height: 7);
  static const kBoxHeight10 = SizedBox(height: 10);
  static const kBoxHeight12 = SizedBox(height: 12);
  static const kBoxHeight14 = SizedBox(height: 14);
  static const kBoxHeight16 = SizedBox(height: 16);
  static const kBoxHeight18 = SizedBox(height: 18);
  static const kBoxHeight20 = SizedBox(height: 20);
  static const kBoxHeight22 = SizedBox(height: 22);
  static const kBoxHeight24 = SizedBox(height: 24);
  static const kBoxHeight45 = SizedBox(height: 45);
  static const kBoxHeight48 = SizedBox(height: 48);
  static const kBoxHeight58 = SizedBox(height: 58);

  static const kBoxHeight30 = SizedBox(height: 30);
  static const kBoxHeight32 = SizedBox(height: 32);
  static const kBoxHeight64 = SizedBox(height: 64);
  static const kBoxWidth2 = SizedBox(width: 2);
  static const kBoxWidth8 = SizedBox(width: 8);
  static const kBoxWidth6 = SizedBox(width: 6);
  static const kBoxWidth4 = SizedBox(width: 4);
  static const kBoxWidth10 = SizedBox(width: 10);
  static const kBoxWidth12 = SizedBox(width: 12);
  static const kBoxWidth20 = SizedBox(width: 20);
  static const kBoxWidth16 = SizedBox(width: 16);
  static const kBoxWidth24 = SizedBox(width: 24);
  static const kBoxWidth30 = SizedBox(width: 30);

  /// padding
  static const kPaddingAll4 = EdgeInsets.all(4);
  static const kPaddingAll3 = EdgeInsets.all(3);
  static const kPaddingAll2 = EdgeInsets.all(2);
  static const kPaddingAll1 = EdgeInsets.all(1);
  static const kPaddingAll0 = EdgeInsets.all(0);

  static const kPaddingLeft12 = EdgeInsets.only(left: 12);
  static const kPaddingL16 = EdgeInsets.only(left: 16);
  static const kPaddingHorizontal12Vertical8 =
      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8);
  static const kPaddingHorizontal8Vertical3 =
      EdgeInsets.symmetric(horizontal: 8, vertical: 3);
  static const kPaddingAll6 = EdgeInsets.all(6);
  static const kPaddingHorizontal16Vertical8 =
      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8);
  static const kPaddingHorizontal16Vertical6 =
      EdgeInsets.symmetric(horizontal: 16.0, vertical: 6);
  static const kPaddingAll8 = EdgeInsets.all(8);
  static const kPaddingAll16Top24 =
      EdgeInsets.only(top: 24, right: 16, bottom: 16, left: 16);
  static const kPaddingAll12 = EdgeInsets.all(12);
  static const kPaddingAll12Top16 = EdgeInsets.only(
    left: 12,
    top: 16,
    right: 12,
    bottom: 12,
  );
  static const kPaddingVertical12 = EdgeInsets.symmetric(
    vertical: 12,
  );
  static const kPaddingAll12bottom0 = EdgeInsets.only(
    top: 12,
    left: 12,
    right: 12,
    bottom: 0,
  );
  static const kPaddingAll12Top4 = EdgeInsets.only(
    top: 4,
    left: 12,
    right: 12,
    bottom: 12,
  );
  static const kPaddingAll10 = EdgeInsets.all(10);
  static const kPaddingAll16 = EdgeInsets.all(16);
  static const kPaddingTop16Horizontal16Bottom8 = EdgeInsets.only(
    top: 16,
    right: 16,
    left: 16,
    bottom: 8,
  );

  static const kPaddingTop8Horizontal16Bottom8 = EdgeInsets.only(
    top: 8,
    right: 16,
    left: 16,
    bottom: 8,
  );
  static const kPaddingAll32 = EdgeInsets.all(32);
  static const kPaddingAll16bottom0 = EdgeInsets.fromLTRB(16, 16, 16, 0);
  static const kPaddingAllB12 = EdgeInsets.fromLTRB(16, 16, 16, 12);
  static const kPaddingAllB4 = EdgeInsets.fromLTRB(16, 16, 16, 4);
  static const kPaddingAll12B0 = EdgeInsets.fromLTRB(12, 12, 12, 0);
  static const kPaddingAll16B0 = EdgeInsets.fromLTRB(16, 16, 16, 0);
  static const kPaddingAllT0 = EdgeInsets.fromLTRB(16, 0, 16, 16);
  static const kPaddingAllTB0 = EdgeInsets.fromLTRB(16, 0, 16, 0);
  static const kPaddingAllT12B16 = EdgeInsets.fromLTRB(16, 12, 16, 0);
  static const kPaddingAllT8B16 = EdgeInsets.fromLTRB(16, 8, 16, 16);
  static const kPaddingAll24 = EdgeInsets.all(24);
  static const kPaddingOnlyTop8 = EdgeInsets.only(top: 8);
  static const kPaddingOnlyRight16 = EdgeInsets.only(right: 16);
  static const kPaddingOnlyLeft16 = EdgeInsets.only(left: 16);
  static const kPaddingOnlyBottom16 = EdgeInsets.only(bottom: 16);
  static const kPaddingOnlyRight12 = EdgeInsets.only(right: 12);
  static const kPaddingHorizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingHorizontal12 = EdgeInsets.symmetric(horizontal: 12);
  static const kPadding16Top24 = EdgeInsets.fromLTRB(16, 24, 16, 16);
  static const kPaddingLTRB8 = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 16,
    bottom: 8,
  );
  static const kPaddingLT8RB = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 8,
    bottom: 16,
  );
  static const kPadding12LTRB4 = EdgeInsets.only(
    left: 12,
    right: 12,
    top: 12,
    bottom: 4,
  );
  static const kPaddingL16T12R16B16 = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 12,
    bottom: 16,
  );
  static const kPaddingL12T12R12B8 = EdgeInsets.only(
    left: 12,
    right: 12,
    top: 12,
    bottom: 8,
  );
  static const kPaddingL68T12R68B16 = EdgeInsets.only(
    left: 68,
    right: 68,
    top: 12,
    bottom: 16,
  );
  static const kPaddingL16T4R16B16 = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 4,
    bottom: 16,
  );
  static const kPaddingL16T8R8B8 = EdgeInsets.only(
    left: 16,
    right: 8,
    top: 8,
    bottom: 8,
  );
  static const kPaddingL16T16R16B12 = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 16,
    bottom: 12,
  );
  static const kPaddingL16T0R16B12 = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 0,
    bottom: 12,
  );

  static const kPaddingL16R16B16 = EdgeInsets.only(
    left: 16,
    right: 16,
    bottom: 16,
  );

  static const kPaddingL16R16T16 = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 16,
  );

  static const kPaddingL16R8T16 = EdgeInsets.only(
    left: 16,
    right: 8,
    top: 16,
  );

  static const kPaddingL16R8 = EdgeInsets.only(
    left: 16,
    right: 8,
  );

  static const kPaddingL16R16T12 = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 12,
  );

  static const kPaddingL16R16B12 = EdgeInsets.only(
    left: 16,
    right: 16,
    bottom: 12,
  );

  static const kPaddingBottom4 = EdgeInsets.only(bottom: 4);
  static const kPaddingBottom1 = EdgeInsets.only(bottom: 1);
  static const kPaddingBottom0 = EdgeInsets.only(bottom: 0);
  static const kPaddingBottom8 = EdgeInsets.only(bottom: 8);
  static const kPaddingBottom10 = EdgeInsets.only(bottom: 10);
  static const kPaddingBottom12 = EdgeInsets.only(bottom: 12);
  static const kPaddingBottom16 = EdgeInsets.only(bottom: 16);
  static const kPaddingBottom85Horizontal32 = EdgeInsets.only(
    bottom: 85,
    right: 32,
    left: 32,
  );
  static const kPaddingRight24top24 = EdgeInsets.only(right: 24, top: 24);
  static const kPaddingBottom22 = EdgeInsets.only(bottom: 22);
  static const kPaddingTop4 = EdgeInsets.only(top: 4);
  static const kPaddingTop6 = EdgeInsets.only(top: 6);
  static const kPaddingTop8 = EdgeInsets.only(top: 8);
  static const kPaddingTop16 = EdgeInsets.only(top: 16);
  static const kPaddingL16B16 = EdgeInsets.only(left: 16, bottom: 16);
  static const kPaddingLeftRightBottom16 =
      EdgeInsets.only(left: 16, right: 16, bottom: 16);
  static const kPaddingLeft16Right16Top12 =
      EdgeInsets.only(left: 16, right: 16, top: 12);
  static const kPaddingLeftTopRight16 =
      EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0);
  static const kPaddingLeft10Right10Bottom16 =
      EdgeInsets.only(left: 10, right: 10, bottom: 16);
  static const kPaddingZero = EdgeInsets.zero;

  static const kPaddingHor32Ver20 =
      EdgeInsets.symmetric(horizontal: 32, vertical: 20);
  static const kPaddingHor24 = EdgeInsets.symmetric(horizontal: 24);
  static const kPaddingHor16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingHor14 = EdgeInsets.symmetric(horizontal: 14);
  static const kPaddingHor12 = EdgeInsets.symmetric(horizontal: 12);
  static const kPaddingHor20 = EdgeInsets.symmetric(horizontal: 20);
  static const kPaddingHor32 = EdgeInsets.symmetric(horizontal: 32);
  static const kPaddingHor200= EdgeInsets.symmetric(horizontal: 200);
  static const kPaddingHor12Vertical24 =
      EdgeInsets.symmetric(horizontal: 12, vertical: 24);
  static const kPaddingHor16Vertical24 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 24);
  static const kPaddingHor16Top16 = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 16,
  );
  static const kPaddingHor12Top12 = EdgeInsets.only(
    left: 12,
    right: 12,
    top: 12,
  );
  static const kPaddingHor10 = EdgeInsets.symmetric(horizontal: 10);
  static const kPaddingHor8 = EdgeInsets.symmetric(horizontal: 8);
  static const kPaddingL16R4 = EdgeInsets.only(left: 16, right: 4);
  static const kPaddingHor6 = EdgeInsets.symmetric(horizontal: 6);
  static const kPaddingHor4 = EdgeInsets.symmetric(horizontal: 4);
  static const kPaddingVer16 = EdgeInsets.symmetric(vertical: 16);
  static const kPaddingVer12 = EdgeInsets.symmetric(vertical: 12);
  static const kPaddingVer8 = EdgeInsets.symmetric(vertical: 8);
  static const kPaddingVer24 = EdgeInsets.symmetric(vertical: 24);
  static const kPaddingHor16Ver12 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const kPaddingHor12Ver14 =
      EdgeInsets.symmetric(horizontal: 12, vertical: 14);
  static const kPaddingHor16top12 = EdgeInsets.only(
    right: 16,
    left: 16,
    top: 12,
  );
  static const kPaddingHor6Bottom12 = EdgeInsets.only(
    right: 6,
    left: 6,
    bottom: 12,
  );
  static const kPaddingLeft12Right12Bottom12 = EdgeInsets.only(
    right: 12,
    left: 12,
    bottom: 12,
  );
  static const kPaddingL8R16B8 = EdgeInsets.only(
    right: 16,
    left: 8,
    bottom: 8,
  );
  static const kPaddingHor12Ver16 =
      EdgeInsets.symmetric(horizontal: 12, vertical: 22);
  static const kPaddingHor16Ver8 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  static const kPaddingHor16Ver4 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 4);
  static const kPaddingHor8Ver4 =
      EdgeInsets.symmetric(horizontal: 8, vertical: 4);
  static const kPaddingHor16Ver10 =
      EdgeInsets.symmetric(vertical: 10, horizontal: 16);
  static const kPaddingHor12Ver4 =
      EdgeInsets.symmetric(vertical: 4, horizontal: 12);
  static const kPaddingHor12Ver6 =
      EdgeInsets.symmetric(vertical: 6, horizontal: 12);
  static const kPaddingHor12Ver10 =
      EdgeInsets.symmetric(vertical: 10, horizontal: 12);
  static const kPaddingHor10Ver12 =
      EdgeInsets.symmetric(vertical: 12, horizontal: 10);
  static const kPaddingRLB12T6 =
      EdgeInsets.only(right: 12, left: 12, bottom: 12, top: 6);

  /// border radius
  static const kRadius = Radius.zero;
  static const kRadius8 = Radius.circular(8);
  static const kRadius12 = Radius.circular(12);
  static const kBorderRadius = BorderRadius.all(Radius.circular(0));
  static const kBorderRadius2 = BorderRadius.all(Radius.circular(2));
    static const kBorderRadius4 = BorderRadius.all(Radius.circular(4));
  static const kBorderRadius6 = BorderRadius.all(Radius.circular(6));
  static const kBorderRadius8 = BorderRadius.all(Radius.circular(8));
  static const kBorderRadius10 = BorderRadius.all(Radius.circular(10));
  static const kBorderRadiusTopLeftTopRight10 = BorderRadius.only(
      topLeft: Radius.circular(10), topRight: Radius.circular(10));
  static const kBorderRadiusTop16 = BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  );
  static const kBorderRadiusTop12 = BorderRadius.only(
    topLeft: Radius.circular(12),
    topRight: Radius.circular(12),
  );
  static const kBorderRadiusBottom16 = BorderRadius.only(
    bottomLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
  );
  static const kBorderRadiusBottom12 = BorderRadius.only(
    bottomLeft: Radius.circular(12),
    bottomRight: Radius.circular(12),
  );
  static const kBorderRadius12 = BorderRadius.all(Radius.circular(12));
  static const kBorderRadius16 = BorderRadius.all(Radius.circular(16));
  static const kBorderRadius24 = BorderRadius.all(Radius.circular(24));
  static const kBorderRadius48 = BorderRadius.all(Radius.circular(48));
  static const kBorderRadius50 = BorderRadius.all(Radius.circular(50));
  static const kBorderRadius64 = BorderRadius.all(Radius.circular(64));

  ///shape
  static const kShapeRadius12 =
      RoundedRectangleBorder(borderRadius: kBorderRadius12);

  /// constraints
  static const kBoxConstraints45 = BoxConstraints(
    maxHeight: 45,
    maxWidth: 45,
    minWidth: 45,
    minHeight: 45,
  );
  static const kBoxConstraints48 = BoxConstraints(
    maxHeight: 48,
    maxWidth: 48,
    minWidth: 48,
    minHeight: 48,
  );
  static const kBoxConstraints56 = BoxConstraints(
    maxHeight: kToolbarHeight,
    maxWidth: kToolbarHeight,
    minWidth: kToolbarHeight,
    minHeight: kToolbarHeight,
  );

  static const kWhiteSpacingH16 = ColoredBox(
    color: Colors.white,
    child: SizedBox(height: 16),
  );

  // static const kTabBarBoxDecoration = BoxDecoration(
  //   color: AppColors.bgGrey2,
  //   borderRadius: kBorderRadius8,
  // );
  // static const kTabBarBoxDecorationDark = BoxDecoration(
  //   color: ThemeColors.backgroundDark,
  //   borderRadius: kBorderRadius8,
  // );
  // static const kTabBoxDecoration = BoxDecoration(
  //   color: AppColors.white,
  //   borderRadius: kBorderRadius8,
  // );
  static Size? _currentSize;

  static setCurrentSize(Size u) {
    _currentSize = u;
  }

  static Size get currentSize => _currentSize ?? const Size(375, 812);

  static void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text, style: const TextStyle(fontSize: 24)),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

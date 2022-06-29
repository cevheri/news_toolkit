// ignore_for_file: prefer_const_constructors

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_news_template/slideshow/view/slideshow_page.dart';
import 'package:mockingjay/mockingjay.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:news_blocks/news_blocks.dart';

import '../../helpers/helpers.dart';

void main() {
  group('Slideshow', () {
    const articleId = 'articleId';
    final slides = List.generate(
      4,
      (index) => SlideBlock(
        caption: 'caption',
        description: 'description',
        photoCredit: 'photo credit',
        imageUrl: 'imageUrl',
      ),
    );
    final slideshow = SlideshowBlock(title: 'title', slides: slides);
    test('has a route', () {
      expect(
        SlideshowPage.route(
          slideshow: slideshow,
          articleId: articleId,
        ),
        isA<MaterialPageRoute>(),
      );
    });

    testWidgets('renders a SlideshowPage', (tester) async {
      await mockNetworkImages(
        () async => tester.pumpApp(
          SlideshowPage(
            slideshow: slideshow,
            articleId: articleId,
          ),
        ),
      );

      expect(find.byType(SlideshowPage), findsOneWidget);
    });

    group('navigates', () {
      testWidgets('back when leading button is pressed.', (tester) async {
        final navigator = MockNavigator();

        when(() => navigator.popUntil(any())).thenAnswer((_) async {});
        await mockNetworkImages(
          () async => tester.pumpApp(
            SlideshowPage(
              slideshow: slideshow,
              articleId: articleId,
            ),
            navigator: navigator,
          ),
        );

        await tester.tap(find.byType(AppBackButton));
        await tester.pumpAndSettle();
        verify(navigator.pop);
      });
    });
  });
}
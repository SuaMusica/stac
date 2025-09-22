import 'package:stac_core/stac_core.dart';

StacWidget onboardingScreen() {
  return StacScaffold(
    body: StacColumn(
      children: [
        StacImage(
          imageType: StacImageType.asset,
          src: 'assets/images/kny.png',
          width: double.maxFinite,
          height: double.maxFinite,
          fit: StacBoxFit.cover,
        ),
        StacContainer(
          child: StacContainer(
            width: 1000,
            color: StacColors.surfaceBright,
            child: StacPadding(
              padding: StacEdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
                bottom: 52,
              ),
              child: StacColumn(
                mainAxisAlignment: StacMainAxisAlignment.end,
                crossAxisAlignment: StacCrossAxisAlignment.start,
                children: [
                  StacText(
                    data: 'Ani',
                    style: StacTextStyle(
                      fontSize: 34,
                      fontWeight: StacFontWeight.w700,
                      height: 1.1,
                      letterSpacing: -0.4,
                    ),
                    children: [
                      StacTextSpan(
                        text: 'Watch',
                        style: StacTextStyle(color: StacColors.primary),
                      ),
                    ],
                  ),
                  const StacSizedBox(height: 10),
                  StacText(
                    data:
                        'Watch, enjoy and track all of your anime series, movies and OVA\'s',
                    style: StacTheme.textTheme.bodyLarge,
                    copyWithStyle: StacCustomTextStyle(
                      color: StacColors.onSurfaceVariant,
                    ),
                  ),
                  const StacSizedBox(height: 56),
                  StacSizedBox(
                    height: 52,
                    width: 1000,
                    child: StacFilledButton(
                      child: StacText(
                        data: '',
                        style: StacTheme.textTheme.bodyLarge,
                        children: [
                          StacTextSpan(
                            text: 'Get Started',
                            style: StacTextStyle(color: StacColors.onPrimary),
                          ),
                        ],
                      ),
                      // onPressed: StacNavigateAction(
                      //   routeName: 'mainNav',
                      //   navigationStyle: NavigationStyle.pushNamed,
                      // ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

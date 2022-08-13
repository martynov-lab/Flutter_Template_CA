part of ui_utils;

class AppBottomSheet {
  // Use: AppBottomSheet.showButtomSheet(context, Text('Some widget'));
  // isWrapContent - height by content size
  // heightOffset - offset height from the top
  static Future showButtomSheet({
    required BuildContext context,
    required bool isExpanded,
    bool isWrapContent = true,
    double heightOffset = 0.0,
    Widget? child,
  }) =>
      showMaterialModalBottomSheet(
        context: context,
        elevation: 0,
        expand: isExpanded,
        isDismissible: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        builder: (BuildContext context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: GestureDetector(
            onTap: (() {
              print('Тап по BottomSheet');
            }),
            child: FractionallySizedBox(
              child: SingleChildScrollView(
                child: Transform.translate(
                  offset: Offset(0.0, -3.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    height: isWrapContent
                        ? null
                        : MediaQuery.of(context).size.height - heightOffset,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: child,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

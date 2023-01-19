// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'color_config.dart';
import 'global.dart';

class CMScaffold extends StatefulWidget {
  final PreferredSizeWidget? appBar;

  final Widget? body;
  final Widget? floatingButton;

  final bool? resizeToAvoidBottomInset;

  final bool? resizeToAvoidBottomPadding;
  final bool? extendBodyBehindAppBar;
  final bool containAppBarShadow;
  final Color? backgroundColor;
  final Function? refreshFunction;
  final bool enablePullToRefresh;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final FloatingActionButtonLocation floatingActionButtonLocation;

  CMScaffold(
      {this.appBar,
      this.body,
      this.backgroundColor,
      this.resizeToAvoidBottomInset,
      this.resizeToAvoidBottomPadding,
      this.enablePullToRefresh = false,
      this.refreshFunction,
      this.floatingButton,
      this.scaffoldKey,
      this.extendBodyBehindAppBar,
      this.floatingActionButtonLocation = FloatingActionButtonLocation.endFloat,
      this.containAppBarShadow = true});

  @override
  _CMScaffoldState createState() => _CMScaffoldState();
}

class _CMScaffoldState extends State<CMScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar ?? true,
      key: (widget.scaffoldKey == null) ? _scaffoldKey : widget.scaffoldKey,
      appBar: (widget.appBar == null)
          ? widget.appBar
          : widget.containAppBarShadow == true
              ? PreferredSize(
                  child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: HexColor("#1A000000"),
                          offset: Offset(0, 20.0),
                          blurRadius: 30.0,
                        )
                      ]),
                      child: widget.appBar),
                  preferredSize: Size.fromHeight(kToolbarHeight),
                )
              : widget.appBar,
      body: widget.enablePullToRefresh
          ? RefreshIndicator(
              onRefresh: (widget.refreshFunction != null)
                  ? widget.refreshFunction as Future<void> Function()
                  : dummyRefreshFunction,
              child: scaffoldBody())
          : scaffoldBody(),
      backgroundColor: (widget.backgroundColor == null)
          ? Colors.white
          : widget.backgroundColor,
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset ?? false,
      floatingActionButton:
          (widget.floatingButton != null) ? widget.floatingButton : Container(),
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
    );
  }

  Widget scaffoldBody() {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: widget.body,
    );
  }

  Future<void> dummyRefreshFunction() {
    return Future.value(null);
  }
}

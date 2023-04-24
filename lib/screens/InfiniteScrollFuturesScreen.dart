import 'package:flutter_components_practice/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InfiniteScrollFuturesScreen extends StatefulWidget {
  const InfiniteScrollFuturesScreen({Key? key}) : super(key: key);

  @override
  State<InfiniteScrollFuturesScreen> createState() => _InfiniteScrollFuturesScreenState();
}

class _InfiniteScrollFuturesScreenState extends State<InfiniteScrollFuturesScreen> {
  final List<int> imagesIds = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if( ( scrollController.position.pixels + 500 ) >= scrollController.position.maxScrollExtent ) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if( isLoading ) return;

    isLoading = true;

    setState(() {});

    await Future.delayed( const Duration( seconds: 3 ) );

    add5();

    isLoading = false;
    setState(() {});

    if( ( scrollController.position.pixels + 100 ) <= scrollController.position.maxScrollExtent ) return;

    scrollController.animateTo(
        scrollController.position.pixels + 120,
        duration: const Duration( microseconds: 300 ),
        curve: Curves.fastOutSlowIn
    );
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll(
        [1, 2, 3, 4, 5].map((e) => lastId + e)
    );
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed( const Duration( seconds: 2 ) );
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Stack(
            children: [
              RefreshIndicator(
                color: AppTheme.primaryColor,
                onRefresh: onRefresh,
                child: ListView.builder(
                  // physics: const BouncingScrollPhysics(),
                  controller: scrollController,
                  itemCount: imagesIds.length,
                  itemBuilder: ( BuildContext context, int index ) {
                    return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      placeholder: const AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage('https://picsum.photos/200/300?image=${ imagesIds[index] }'),
                    );
                  },
                ),
              ),
              if( isLoading )
                Positioned(
                  bottom: 40,
                  left: sizeScreen.width * 0.5 - 30,
                  child: const _LoadingIcon(),
                )
            ]
          ),
        )
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 60,
      height: 60,
      child: const CircularProgressIndicator(),
    );
  }
}

import 'package:eriell_test_case/core/theme/colors/theme_colors.dart';
import 'package:eriell_test_case/features/main/presentation/mixin/mixin.dart';
import 'package:eriell_test_case/features/main/presentation/pages/widgets/pie_chart_widget.dart';
import 'package:eriell_test_case/features/main/presentation/pages/widgets/table_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_utils.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with MainMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      appBar: AppBar(
        title: const Text('Enter Engineering'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: OrientationBuilder(
              builder: (context, orientation) {
                if (MediaQuery.of(context).orientation ==
                    Orientation.portrait) {
                  return const PieChartWidget();
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
          const SliverSafeArea(
            top: false,
            minimum: AppUtils.kPaddingAllT0,
            sliver: SliverToBoxAdapter(
              child: TableWidget(),
            ),
          ),
        ],
      ),
    );
  }
}

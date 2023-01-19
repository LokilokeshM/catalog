import 'package:cm_core_ui/model/topselling_info.dart';
import 'package:cm_core_ui/ui/overview/application/topselling_product_state.dart';
import 'package:cm_core_ui/ui/overview/application/topselling_product_usercase.dart';
import 'package:cm_core_ui/ui/overview/domain/topselling_repo.dart';

class TopSellingProductLogic extends TopSellingProductUseCase {
  TopSellingProductLogic(this.repo) : super(TopSellingProductState.initial()) {
    getTopSellingProduct();
  }
  TopSellingRepo repo;
  @override
  Future<void> getTopSellingProduct() async {
    List<TopSellingInfo> topSelling = [];

    final result = await repo.getProductList();
    result.when(success: (data) {
      if (data.productList != null) {
        for (var element in data.productList!) {
          topSelling.add(
            TopSellingInfo(
              imageSrc: element.image != null
                  ? element.image!.src ??
                      "https://cdn.shopify.com/s/files/1/0565/1903/2987/products/6_0490d6eb-7aa5-4e5d-a31f-1652bdbb2460.webp?v=1672725989"
                  : "https://cdn.shopify.com/s/files/1/0565/1903/2987/products/6_0490d6eb-7aa5-4e5d-a31f-1652bdbb2460.webp?v=1672725989",
              title: element.title ?? "",
              orderCount: 50,
              price: element.variants != null
                  ? element.variants!.first.price ?? ""
                  : "",
            ),
          );
          if (topSelling.length == 4) break;
        }
        state = TopSellingProductState.topSelling(topSelling);
      }
    }, failure: (failure) {
      state = TopSellingProductState.failure();
    });
  }
}

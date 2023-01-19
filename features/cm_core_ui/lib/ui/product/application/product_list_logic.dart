import 'package:cm_core_ui/ui/product/application/product_list_state.dart';
import 'package:cm_core_ui/ui/product/application/product_list_usecase.dart';
import 'package:cm_core_ui/ui/product/domain/product_list_repo.dart';
import 'package:flutter/material.dart';

List<String> productTabString = [
  "All",
  "Active",
  "published",
  "unpublished",
  "archived",
  "draft",
];
List<Tab> productTabs = productTabString
    .map(
      (e) => Tab(
        text: e,
      ),
    )
    .toList();

class ProductListLogic extends ProductListUseCase {
  ProductListLogic(this.repo) : super(ProductListState.initial()) {
    getProductListStatus();
  }
  final ProductListRepo repo;

  @override
  Future<void> tabSelected({required int index}) async {
    switch (productTabString[index]) {
      case "All":
        return getProductListStatus();
      case "Active":
        return getProductListStatus(
            status: productTabString[index].toLowerCase());
      case "published":
        return getProductListPublishedStatus(
            publishedStatus: productTabString[index].toLowerCase());
      case "unpublished":
        return getProductListPublishedStatus(
            publishedStatus: productTabString[index].toLowerCase());
      case "archived":
        return getProductListStatus(
            status: productTabString[index].toLowerCase());
      case "draft":
        return getProductListStatus(
            status: productTabString[index].toLowerCase());
      default:
        return getProductListStatus();
    }
  }

  @override
  Future<void> getProductListPublishedStatus(
      {String publishedStatus = "any"}) async {
    final result = await repo.getProductListPublishedStatus(
        publishedStatus: publishedStatus);
    result.when(success: (value) {
      state = ProductListState.productList(productList: value.product);
    }, failure: (error) {
      state = ProductListState.failure();
    });
  }

  @override
  Future<void> getProductListStatus({String status = "any"}) async {
    final result = await repo.getProductListStatus(status: status);
    result.when(success: (value) {
      state = ProductListState.productList(productList: value.product);
    }, failure: (error) {
      state = ProductListState.failure();
    });
  }
}

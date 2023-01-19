import 'package:cm_common/constant/constant.dart';
import 'package:cm_core_ui/ui/product/application/application.dart';
import 'package:cm_network_implementation/entity/product_list_response.dart'
    as p;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class ProdcutListViewWidget extends ConsumerWidget {
  ProdcutListViewWidget({
    Key? key,
  }) : super(key: key);

  bool isSelected = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = ref.watch(productListProvider);

    return Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: productList.when(
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          failure: () {
            return const Center(
              child: Text("No Records Found"),
            );
          },
          productList: (List<p.Product> productList) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "",
                ),
                SizedBox(
                    width: double.infinity,
                    child: DataTable(
                        showCheckboxColumn: true,
                        dividerThickness: 2,
                        columnSpacing: defaultPadding,
                        columns: const [
                          DataColumn(
                            label: Text(
                              "Product",
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "Status",
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "Inventory",
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "Type",
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "Vendor",
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "Action",
                            ),
                          ),
                        ],
                        // rows: const [],
                        rows: List.generate(
                          productList.length,
                          (index) => recentFileDataRow(productList[index], ref),
                        ))),
              ],
            );
          },
        ));
  }

  DataRow recentFileDataRow(p.Product product, WidgetRef ref) {
    return DataRow(
      onSelectChanged: (_) {},
      selected: isSelected,
      onLongPress: () {
        // showDialog(
        //     context: widget.context,
        //     builder: (BuildContext context) {
        //       return AlertDialog(
        //           backgroundColor: secondaryColor,
        //           content: Container(
        //             width: MediaQuery.of(context).size.width - 200,
        //             height: MediaQuery.of(context).size.height - 100,
        //             child: Stack(children: <Widget>[
        //               Positioned(
        //                 right: 20,
        //                 top: 5.0,
        //                 child: InkResponse(
        //                   onTap: () {
        //                     Navigator.of(context).pop();
        //                   },
        //                   child: CircleAvatar(
        //                     radius: 20,
        //                     child: Icon(Icons.close),
        //                   ),
        //                 ),
        //               ),
        //               Positioned(
        //                 top: 10.0,
        //                 child: InkResponse(
        //                     onTap: () {
        //                       Navigator.of(context).pop();
        //                     },
        //                     child: const Text(
        //                       "Add Prodcut",
        //                     )),
        //               ),
        //               Positioned(
        //                 top: 50,
        //                 child: Container(
        //                     width: MediaQuery.of(context).size.width - 200,
        //                     height: MediaQuery.of(context).size.height - 100,
        //                     child: SingleChildScrollView(
        //                         child: AddProductPage(
        //                             product: product, bloc: widget.bloc))),
        //               )
        //             ]),
        //           ));
        //     });
      },
      cells: [
        DataCell(
            Row(
              children: [
                Image.network(
                  product.image != null ? product.image!.src ?? "" : "",
                  height: 30,
                  width: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Text(
                    product.title!,
                  ),
                ),
              ],
            ), onTap: () {
          onTap(product, ref);
        }),
        DataCell(
            Chip(
                label: Text(product.status ?? "Active"),
                backgroundColor: Colors.white,
                labelStyle: TextStyle(color: Colors.black)), onTap: () {
          onTap(product, ref);
        }),
        DataCell(
            Text(
              product.variants!.isNotEmpty
                  ? "${product.variants!.first.inventoryQuantity} in stock"
                  : "",
            ), onTap: () {
          onTap(product, ref);
        }),
        DataCell(
            Text(
              product.productType ?? "",
            ), onTap: () {
          onTap(product, ref);
        }),
        DataCell(
            Text(
              product.vendor ?? "",
            ), onTap: () {
          onTap(product, ref);
        }),
        DataCell(
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
              ],
            ), onTap: () {
          onTap(product, ref);
        }),
      ],
    );
  }

  void onTap(p.Product product, WidgetRef ref) {
    ref.read(productProvider.notifier).viewProduct(product);
  }
}

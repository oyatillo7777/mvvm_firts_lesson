import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/ui/products/widgets/products_item.dart';

import '../../view_model/product_view_model.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    var myProvider = context.read<ProductsViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Prodacts model"),
      ),
      body: Consumer<ProductsViewModel>(
        builder: (context, myProvider, child) {
          if (myProvider.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (myProvider.product.isNotEmpty) {
            return ListView.builder(
                itemCount: myProvider.product.length,
                itemBuilder: (context, index) {
                  return ProductsItem(myProvider.product[index]);
                });
          } else {
            return Text('Nimadurda xatolik bor manimcha');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<ProductsViewModel>().getAllProducts();
      }),
    );
  }
}

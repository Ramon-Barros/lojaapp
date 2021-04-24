import 'package:flutter/material.dart';
import 'package:loja_virt/tabs/home_tab.dart';
import 'package:loja_virt/tabs/order_tab.dart';
import 'package:loja_virt/tabs/places_tab.dart';
import 'package:loja_virt/tabs/products_tab.dart';
import 'package:loja_virt/widgets/cart_button.dart';
import 'package:loja_virt/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();
  
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title:Text("Produtos"),
            centerTitle: true,
            ),
            drawer: CustomDrawer(_pageController),
            body: ProductsTab(),
            floatingActionButton: CartButton(),
          ),
          Scaffold(
            appBar: AppBar(
              title: Text("Lojas"),
              centerTitle: true,
            ),
            drawer: CustomDrawer(_pageController),
            body: PlacesTab(),
          ),
          Scaffold(
            appBar: AppBar(
              title: Text("Meus Pedidos"),
              centerTitle: true,
            ),
            drawer: CustomDrawer(_pageController),
            body: OrdersTab(),
          ),
      ],
    );
  }
}
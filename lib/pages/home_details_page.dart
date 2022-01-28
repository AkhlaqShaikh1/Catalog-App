import 'package:flutter/material.dart';
import 'package:myapp1/models/catalog.dart';
import 'package:myapp1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.extraBold.xl4.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      context.theme.floatingActionButtonTheme.backgroundColor),
                  shape: MaterialStateProperty.all(const StadiumBorder())),
              child: "Add to Cart".text.make(),
            ).wh(130, 50)
          ],
        ).p24().py12(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: SingleChildScrollView(
                  child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(context.backgroundColor)
                            .semiBold
                            .make(),
                        catalog.desc.text.caption(context).extraBlack.xl.make(),
                        10.heightBox,
                        "Vita oportune furono cospetto intendo fuor forza. Quali suoi suo quel cospetto nostro. Alle nostri non nome mortali quali e furono quali. Quale esperienza gli prieghi ciascheduna in per donne.."
                            .text
                            .caption(context)
                            .center
                            .make()
                            .p16()
                      ],
                    ).py64(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

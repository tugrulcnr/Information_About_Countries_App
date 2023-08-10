import 'package:about_countries/common/loadingbar.dart';
import 'package:about_countries/details/view_model/detils_view_model.dart';
import 'package:flutter/material.dart';
class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.index});
  final int index;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends DetailsModelView {
final String _notHave = "Empty Value" ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isloaded ? Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextMethod(detailsModel[widget.index].name!.common.toString(),fontSize: 40),
                    MyTextMethod(detailsModel[widget.index].name!.official.toString(),),
                     
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(detailsModel[widget.index].flags?.png.toString() ?? "https://flagcdn.com/w320/tr.png"),
                )),
            ],

          ),
          MyTextMethod(detailsModel[widget.index].flags!.alt.toString(),fontSize: 12),
          MyTextMethod("Population :  ${detailsModel[widget.index].population}" ?? _notHave,fontSize: 18),
          MyTextMethod("Area :  ${detailsModel[widget.index].area}" ?? _notHave,fontSize: 18),
          MyTextMethod("Idd Root :  ${detailsModel[widget.index].idd?.root}" ?? _notHave,fontSize: 18),
          MyTextMethod("Capital :  ${detailsModel[widget.index].capital?[0]}" ?? _notHave,fontSize: 18),


           ],
      ) : const LoadgingPageView()
    );
  }

  // ignore: non_constant_identifier_names
  Padding MyTextMethod(String text, {Color color = Colors.black ,double fontSize = 18, FontWeight fontWeight = FontWeight.normal}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text ??  _notHave,style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),),
    );
  }
}
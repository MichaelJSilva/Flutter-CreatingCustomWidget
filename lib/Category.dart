import 'package:flutter/material.dart';

// vars
double _rowSize = 100.00;

// wiidget de categorias
class Category extends StatelessWidget{
  final String   texto;
  final IconData icone;
  final Color    cor;

  const Category({
    Key key,
    @required  this.texto,
    @required  this.icone,
    @required  this.cor

  }) :assert(texto != null),
        assert(icone != null),
        assert(cor != null),
        super(key : key);


  @override
  Widget build(BuildContext context) {

    return   Material(
        color: Colors.transparent,
        child:
        Container(
            height: _rowSize,
            child: InkWell(
                borderRadius: new BorderRadius.all(Radius.elliptical(40.0, 40.0)),
                highlightColor: cor,
                splashColor: cor,
                onTap: (){
                  print(texto);
                },
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                          padding: new EdgeInsets.all(16.0),
                          child: Icon(icone, size: 60.0)
                      ),
                      Center(
                          child : Text(  texto,
                                          style : TextStyle(fontSize: 24.0),
                                          textAlign: TextAlign.center,
                                        ),
                      ),
                    ],
                ),
            ),



        ),
    );

  }

}



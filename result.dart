import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it! ";
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent";
    } else if (resultScore <= 19 && resultScore >= 9) {
      resultText = "You are great minded!";
    } else {
      resultText = "You are really wonderful!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              color:Colors.green,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              
            ),
            textAlign: TextAlign.center,
            
          ),
          FlatButton(
            child: Text("Click to Restart Quiz!"),
            onPressed: resetHandler,
            textColor:Colors.deepPurple,
            
          )
        ],
      ),
    );
  }
}

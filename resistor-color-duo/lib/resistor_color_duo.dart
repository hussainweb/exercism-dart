class ResistorColorDuo {
  var colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  int value(List<String> colorNames) {
    var firstColor = colors.indexOf(colorNames[0]);
    var secondColor = colors.indexOf(colorNames[1]);
    return (firstColor * 10) + secondColor;
  }
}

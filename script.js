function minimize(clickID) {
  console.log(clickID);
  var paragraphID = clickID + "Bio";
  console.log(paragraphID)
  if(document.getElementById(paragraphID).style.display = "block") {
    document.getElementById(paragraphID).style.display = "none";
  }
}

var typed = new Typed('.topTxt', {
  strings: ["A New Class of Threapy"],
  typeSpeed: 50,
  showCursor: true,
  cursorChar: '|',
  autoInsertCss: true,
});

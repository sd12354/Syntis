function minimize(clickID) {
  console.log(clickID);
  var paragraphID = clickID + "Bio";
  var text = document.getElementById(paragraphID)
  console.log(paragraphID)

  if (text.style.display === "none") {
    text.style.display = "block";
  } else {
    text.style.display = "none"
  }
}

var typed = new Typed('.topTxt', {
  strings: ["A New Class of Therapy"],
  typeSpeed: 60,
  showCursor: true,
  cursorChar: '|',
  autoInsertCss: true,
});



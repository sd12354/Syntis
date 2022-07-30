function minimize(clickID) {
  console.log(clickID);
  var paragraphID = clickID + "Bio";
  var text = document.getElementById(paragraphID)
  console.log(paragraphID)
  if (text.style.display === "none") {
    text.style.display = "block";
    document.getElementById(clickID).style.backgroundImage = "url('/assets/svg/remove.svg')"
  } else {
    text.style.display = "none"
    document.getElementById(clickID).style.backgroundImage = "url('/assets/svg/add.svg')"
  }
}

var typed = new Typed('.topTxt', {
  strings: ["A New Class of Therapy"],
  typeSpeed: 60,
  showCursor: true,
  cursorChar: '|',
  autoInsertCss: true,
});



function minimize(clickID) {
  var paragraphID = clickID + "Bio";
  var text = document.getElementById(paragraphID)
  if (text.style.display === "block") {
    text.style.display = "none";
    document.getElementById(clickID).style.backgroundImage = "url('/assets/svg/add.svg')"
  } else {
    text.style.display = "block"
    document.getElementById(clickID).style.backgroundImage = "url('/assets/svg/remove.svg')"
  }
}

var typed = new Typed('.topTxt', {
  strings: ["A New Class of Therapy"],
  typeSpeed: 60,
  showCursor: true,
  cursorChar: '|',
  autoInsertCss: true,
});



document.getElementById("gio").addEventListener("click", (e) => {
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

})
document.getElementById("bob").addEventListener("click", (e) => {
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
})
document.getElementById("rahul").addEventListener("click", (e) => {
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
})
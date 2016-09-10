var els = document.getElementsByTagName("ul");
var el = els[0];
el.style.backgroundColor = "red";

console.log("The script is running");

function addBackgroundColor(event) {
	event.target.style.backgroundColor = "blue";
}

el.addEventListener("click", addBackgroundColor);


/*function sortByPrice() {
	var sortOption = document.getElementById("sortOption").value;
	var form = document.getElementById("sortForm");
	form.action = "giayController?brand="+querystring("brand")[0]+"&sort=" + sortOption;
	form.submit();
}*/

function sortByPrice() {
	var sortOption = document.getElementById("sortOption").value;
	var form = document.getElementById("sortForm");
	form.action = "giayController?sort=" + sortOption;
	form.submit();
}
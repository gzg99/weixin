
function upPage(pages) {
	if (currentPage > 1) {
		window.location.href = pages+ '?currentPage=' + (parseInt(currentPage) - 1) + '&status=1';
		return;
	}
}
function downPage(pages) {
	
	if (parseInt(currentPage) < parseInt(totalPage)) {
		window.location.href = pages + '?currentPage=' + (parseInt(currentPage) + 1) + '&status=1';
		return;
	}
}
function fpage(pages) {
	window.location.href = pages + '?currentPage=1' + '&status=1';
	return;
}
function epage(pages) {
	window.location.href = pages + '?currentPage=' + totalPage + '&status=1';
	return;
}
function spage(pages) {
	var seastr = $('#seastr').val();
	if (parseInt(seastr) < parseInt(totalPage) || parseInt(seastr) == parseInt(totalPage)) {
		window.location.href =  pages + '?currentPage=' + seastr + '&status=1';
	}
	return;
}
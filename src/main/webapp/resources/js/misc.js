var main_window;
var warning_window;

function logoffMethod(url) {

	main_window = window;

	var width = 400;
	var height = 200;
	var left = (screen.width - width) / 2;
	var top = (screen.height - height) / 2;

	var options = "toolbar=no,location=no,directories=no,menubar=no,scrollbars=no,resizable=no,width="
			+ width + ",height=" + height + ",top=" + top + ",left=" + left;
	warning_window = window.open(url, "Warning", options)

	window.logoffTimer = window.setTimeout('closeAndLogoff(warning_window,url)',
			60 * 1000);

}

function closeAndLogoff(warning_window, url) {

	warning_window.close();
	var l = url.lastIndexOf('/');
	url = url.substring(0, l) + '/logout';
	main_window.location = url;

}

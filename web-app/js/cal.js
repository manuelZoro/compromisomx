/**
 * 
 */

window.onload = function() {
	g_globalObject2 = new JsDatePick({
		useMode : 1,
		isStripped : false,
		target : "div_calendario",
		cellColorScheme : "beige"
	/*
	 * selectedDate:{ This is an example of what the full configuration offers.
	 * day:5, For full documentation about these settings please see the full
	 * version of the code. month:9, year:2006 }, yearsRange:[1978,2020],
	 * limitToToday:false, dateFormat:"%d-%m-%Y", imgPath:"img/", weekStartDay:1
	 */
	});
};
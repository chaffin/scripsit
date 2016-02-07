// toggle the slider
   $(document).ready(function () {
   	$("dd, div.toc ul").slideUp(0);
   	$("dt, div.toc h3").click(function () {
   		$(this).next("dd, div.toc ul").slideToggle("slow");
   	});
   	$(".expand").click(function () {
   		$("dd, div.toc ul").slideDown();
   	});
   		$(".closeall").click(function () {
   			$("dd, div.toc ul").slideUp();
   		});
	});
var scripsit = {
  "author": "Larry Chaffin",
  "date": "2015-12-17",
  "version": "1.0",
  "copyright": "Scripsit Documentation Project<br><a href=\"scripsit.html\">Scripsit</a> &copy; 2014, 2015",
  "help": [
    {
      "title": "1.0 About this website and Scripsit",
      "text": "<div class=\"twocols\"><h3>About</h3><p>Scripsit Documentation Project is a resource kit that is designed for the DoD contractor to assist in implementing  adequate security measures to safeguard unclassified controlled technical information and to prescribe reporting to DoD with regard to the compromise of unclassified controlled technical information resident on or transiting through the contractor unclassified information systems.</p><p>Scripsit Documentation Project is a resource kit that is designed for the DoD contractor to assist in implementing  adequate security measures to safeguard unclassified controlled technical information and to prescribe reporting to DoD with regard to the compromise of unclassified controlled technical information resident on or transiting through the contractor unclassified information systems.</p></div>"
    },
    {
      "title": "1.1 Scripsit",
      "text": "<h3>About</h3><p>Scripsit Documentation Project is a resource kit that is designed for the DoD contractor to assist in implementing  adequate security measures to safeguard unclassified controlled technical information and to prescribe reporting to DoD with regard to the compromise of unclassified controlled technical information resident on or transiting through the contractor unclassified information systems.</p><p>Scripsit Documentation Project is a resource kit that is designed for the DoD contractor to assist in implementing  adequate security measures to safeguard unclassified controlled technical information and to prescribe reporting to DoD with regard to the compromise of unclassified controlled technical information resident on or transiting through the contractor unclassified information systems.</p>"
    }
  ]
}

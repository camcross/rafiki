// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap-sprockets

$(document).ready(function(){
	//for show/hide
		$('.course-header').click(function() {
	    	$(this).next().toggle("slow");
	    });

    //For scrolling
	$('a[href^="#"]').on('click',function (e) {
	    e.preventDefault();

	    var target = this.hash,
	    $target = $(target);

	    $('html, body').stop().animate({
	        'scrollTop': $target.offset().top
	    }, 900, 'swing', function () {
	        window.location.hash = target;
	    });
	});
	// respond to the click on the submit button
	// do a get request that directs us the the check action of the tests controller
	// render the view that shows the graded test
	// replace the modal body with that view
	$('#test_form').on('submit', function(e) {
		e.preventDefault();
	    console.log('inside the ugly submit!');
	    console.log($('#test_form'));
	    console.log( $('#test_form').attr('action'));
	    $.get(
	      $('#test_form').attr('action'),
	      $('#test_form').serialize(), // {"q": "hello"}
	      function(check) {
	        $('.modal-body').html(check);
	      },
	      'html'
	    );
	    console.log('before false');
	    return false;
  	}); 
});


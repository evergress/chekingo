// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

	$(document).ready(function(){

	    $('div.addKid').on('click', function () {
		   	$('div.addKid').fadeOut(200);
		   	$("div.hidden-container").delay(400).fadeIn(200);
		   	
		});

		$('div.removeKid').click(function () {
		   $("div.hidden-container").fadeOut(600);
		   $('div.addKid').delay(600).fadeIn("fast");
		});

		$('div.addKid2').click(function () {
		   $("div.hidden-container2").slideDown("slow");
		});
		$('div.removeKid2').click(function () {
		   $("div.hidden-container2").slideUp("slow");
		});

		$(".other").on('chnage', function () {
		if ($(this).is(':checked')) {
		   	$('.concernsBox textarea').replaceWith("<textarea enabled></textarea>")
		   	$('.concernsContainer').css("opacity", "1");

		} else {
		$('.concernsBox textarea').replaceWith("<textarea disabled></textarea>")
		$('.concernsContainer').css("opacity", ".3");
		}
		});

		$(".other2").change(function () {
		if ($(this).is(':checked')) {
		   	$('.concernsBox textarea').replaceWith("<textarea enabled></textarea>")
		   	$('.concernsContainer2').css("opacity", "1");

		} else {
		$('.concernsBox textarea').replaceWith("<textarea disabled></textarea>")
		$('.concernsContainer2').css("opacity", ".3");
		}
		});

		$(".other3").change(function () {
		if ($(this).is(':checked')) {
		   	$('.concernsBox textarea').replaceWith("<textarea enabled></textarea>")
		   	$('.concernsContainer3').css("opacity", "1");

		} else {
		$('.concernsBox textarea').replaceWith("<textarea disabled></textarea>")
		$('.concernsContainer3').css("opacity", ".3");
		}
		});

		$('.login_link').on('click', function(){
			$('form').submit();
			return false;
		});

		//$('.add_kid_link').on('click', function (){
			//$('form:eq(0)').submit();
			//$('form:eq(1)').submit();
			//$('form:eq(2)').submit();
			//return false;
		//});

		$('.auth_guardian_link').on('click', function(){
			$('form').submit();
			return false;
		});




	});
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require froala_editor.min.js
//= require_tree .

$(function() {

	$("textarea.editable").editable({
	    inlineMode: false,
	    plainPaste: true,
	    height: 300,
		toolbarButtonsSM: ['bold', 'italic', 'underline', 'strikeThrough', 'color', '|', 'paragraphFormat', 'align', 'undo', 'redo', 'html'],
	    colorsText: [
	        '#15E67F', '#E3DE8C', '#D8A076', '#D83762', '#76B6D8', 'REMOVE',
	        '#1C7A90', '#249CB8', '#4ABED9', '#FBD75B', '#FBE571', '#FFFFFF'
	    ]
	});

});
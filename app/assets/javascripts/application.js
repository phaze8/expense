// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require materialize
//= require materialize2
//= require_tree .

var m_and_e = 0;

$(document).on('ready page:change', function(){
	$('#cost_level3_id').find('option').each(function(){
		if($(this).text() == 'Meals & Entertainment'){
			m_and_e = $(this).val();
			return;
		}
	});
	if($('#cost_level3_id').val() == m_and_e){
		var node = $('#cost_level3_id').closest('form').find('.m_and_e').first();	
		node.removeClass('hide');	
	}
	$(document).on('change', '#cost_level3_id', function(){
		var l3 = $(this).val();
		var node = $(this).closest('form').find('.m_and_e').first();
		console.log(node.text());
		if(l3 == m_and_e){
			console.log("hello");
			node.removeClass('hide');
		}
		else {
			node.addClass('hide');
		}
	});
});
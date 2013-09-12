
(function($) {
	$(function(){
		
		// Move labels
		$(".field.text, .field.email, .field.password, .field.textarea").each(function(){
			label = $("label.left", this);
			input = $("input.text, textarea", this);
			
			if(!input.length) return;
			
			// Move label to placeholder
			if(label.length) {
				input.attr('placeholder', label.text());
				label.remove();
			}
			
		});
		
		// Refresh placeholder fix
		if (jQuery.placeholder) {
			jQuery.placeholder.shim();
		}
		
	});
})(jQuery);
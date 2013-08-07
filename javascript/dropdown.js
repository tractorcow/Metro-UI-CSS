(function($){
    $.fn.Dropdown = function( options ){
        var defaults = {
        };

        var $this = $(this)
            ;

        var clearDropdown = function(){
            $(".dropdown-menu").each(function(){
                if ( $(this).css('position') == 'static' ) return;
                $(this).slideUp('fast', function(){});
                $(this).parent().removeClass("active");
            });
        };

        var initSelectors = function(selectors){
			button = $(selectors).children('a:first-child');
        	button.off("click.dropdown");
            button.on('click.dropdown', function(e){
				menu = $(this).parent();
                //e.stopPropagation();
                //$("[data-role=dropdown]").removeClass("active");
            	if($(e.originalEvent.target).parent().is("[data-role]")) e.stopPropagation();

                clearDropdown();
                menu.parents("ul").css("overflow", "visible");

                var $m = menu.children(".dropdown-menu, .sidebar-dropdown-menu");
                $(this).parents("ul").children(".dropdown").children(".dropdown-menu, .sidebar-dropdown-menu").each(function(){
                    if(!menu.hasClass("keep-opened") && !$m.hasClass("keep-opened")) {
                        menu.slideUp('fast');
                        menu.parents("li").removeClass("active");
                    }
                });
                
                if ($m.css('display') == "block") {
                    $m.slideUp('fast');
                    menu.removeClass("active");
                } else {
                    $m.slideDown('fast');
                    menu.addClass("active");
                }
            }).on("mouseleave", function(){
                //$(this).children(".dropdown-menu").hide();
            });
            $('html').on("click", function(e){
            	if(e.originalEvent && $(e.originalEvent.target).parents('[data-role="dropdown"]').length == 0)
            		clearDropdown();
            });
        };

        return this.each(function(){
            if ( options ) {
                $.extend(defaults, options);
            }

            initSelectors($this);
        });
    };

    $(function () {
        $('[data-role="dropdown"]').each(function () {
            $(this).Dropdown();
        });
    });
})(window.jQuery);


(function($){
    $.fn.PullDown = function( options ){
        var defaults = {
        };

        var $this = $(this)
            ;

        var initSelectors = function(selectors){

            selectors.on('click', function(e){
                e.preventDefault();
                var $m = $this.parent().children("ul");
                //console.log($m);
                if ($m.css('display') == "block") {
                    $m.slideUp('fast');
                } else {
                    $m.slideDown('fast');
                }
                //$(this).toggleClass("active");
            });
        };

        return this.each(function(){
            if ( options ) {
                $.extend(defaults, options);
            }

            initSelectors($this);
        });
    };

    $(function () {
        $('.pull-menu, .menu-pull').each(function () {
            $(this).PullDown();
        });
    });
})(window.jQuery);

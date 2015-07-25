$(document).ready(function () {

    var settngs = $.data($('form')[0], 'validator').settings;
    settngs.errorPlacement = function (error, inputElement) {
        var container = $(this).find("[data-valmsg-for='" + inputElement[0].name + "']"),
		replace = $.parseJSON(container.attr("data-valmsg-replace")) !== false;

        // Remove the following line so the default validation messages are not displayed        
        // container.removeClass("field-validation-valid").addClass("field-validation-error");

        error.data("unobtrusiveContainer", container);

        if (replace) {
            container.empty();
            error.removeClass("input-validation-error").appendTo(container);            
        }
        else {
            error.hide();
        }

        /**** Added code to display the error message in a qTip tooltip ****/
        // Set positioning based on the elements position in the form
        var elem = $(inputElement),
			corners = ['top center', 'bottom center'],
			flipIt = elem.parents('span.right').length > 0;

        if (!error.is(':empty')) {
            var elem_error = elem.filter(':not(.valid)');
            elem_error.parents(".parent-validation").addClass("parent-validation-error");
            elem_error.qtip({
                overwrite: false,
                content: error,
                position: {
                    my: corners[flipIt ? 0 : 1],
                    at: corners[flipIt ? 1 : 0],
                    viewport: $(window)
                },
                show: {
                    event: 'mouseover',
                    ready: false
                },
                hide: {
                    event: 'mouseout'
                },
                style: {
                    classes: 'tooltipvalidacao'
                }
            })

			.qtip('option', 'content.text', error);
        }

        // If the error is empty, remove the qTip
        else {             
            elem.qtip('destroy'); 
            elem.parents(".parent-validation").removeClass("parent-validation-error");
        }
    };
});
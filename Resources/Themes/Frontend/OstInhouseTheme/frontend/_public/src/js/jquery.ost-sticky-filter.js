
/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Inhouse Theme
 *
 * @package   OstInhouseTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

;(function ($, window) {

    // use strict mode
    "use strict";

    // detail plugin
    $.plugin( "ostStickyFilter", {

        // on initialization
        init: function ()
        {
            // ...
            var me = this;

            // and the listing container to add margin after
            var $listingContainer = $( "body" ).find( "div.listing--container" );

            // position from top when to start scroll
            var sticky = me.$el.offset().top;

            // add sticky filter class when we are below the filter position
            window.onscroll = function() {
                if (window.pageYOffset > sticky) {
                    me.$el.addClass( "is--sticky-filter" );
                    $listingContainer.addClass( "has--sticky-filter" );
                } else {
                    me.$el.removeClass( "is--sticky-filter" );
                    $listingContainer.removeClass( "has--sticky-filter" );
                }
            };
        },

        // on destroy
        destroy: function()
        {
            // get this
            var me = this;

            // call the parent
            me._destroy();
        }

    });

    // call our plugin
    $( "div.content.listing--content div.listing--actions" ).ostStickyFilter();

})(jQuery, window);

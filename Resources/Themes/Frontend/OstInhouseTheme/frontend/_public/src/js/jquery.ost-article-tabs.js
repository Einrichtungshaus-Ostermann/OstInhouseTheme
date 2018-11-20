
/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Inhouse Theme
 *
 * @package   OstInhouseTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

;(function($) {

    // subscribe after loading new variant
    $.subscribe( "plugin/swAjaxVariant/onRequestData", function()
        {
            // tab menu
            StateManager.addPlugin('.tab-menu--product', 'swTabMenu', {}, ['s', 'm', 'l', 'xl']);

            // tab menu
            StateManager.addPlugin('.tab-menu--product .tab--container', 'swOffcanvasButton', {
                titleSelector: '.tab--title',
                previewSelector: '.tab--preview',
                contentSelector: '.tab--content'
            }, ['xs']);
        }
    );

})(jQuery);

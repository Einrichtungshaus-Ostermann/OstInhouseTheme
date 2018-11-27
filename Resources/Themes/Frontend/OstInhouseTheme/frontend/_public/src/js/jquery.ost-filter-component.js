
/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Inhouse Theme
 *
 * @package   OstInhouseTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

$.overridePlugin( "swFilterComponent", {
    setDisabledClass: function($element, disabled) {
        var me = this;
        me.superclass.setDisabledClass.apply(this, arguments);

        if ( $element.hasClass("filter-panel--input") && disabled) {
            $element.closest("li.filter-panel--option").hide();
        }

        if ( $element.hasClass("filter-panel--input") && disabled === false) {
            $element.closest("li.filter-panel--option").show();
        }
    }
});

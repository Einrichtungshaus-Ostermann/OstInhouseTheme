
/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Inhouse Theme
 *
 * @package   OstInhouseTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

$.overridePlugin( "swImageZoom", {
    init: function () {
        let me = this;
        if (StateManager.getCurrentState() === "xl")
            me.superclass.init.apply(me, arguments);
    }
});

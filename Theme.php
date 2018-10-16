<?php declare(strict_types=1);

/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Inhouse Theme
 *
 * Inhouse Parent Theme.
 *
 * 1.0.0
 * - initial release
 *
 * @package   OstInhouseTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

namespace Shopware\Themes\OstInhouseTheme;



class Theme extends \Shopware\Components\Theme
{

    /**
     * ...
     *
     * @var string
     */

    protected $extend = "Responsive";



    /**
     * ...
     *
     * @var string
     */

    protected $name = "Inhouse Theme";



    /**
     * ...
     *
     * @var string
     */

    protected $description = "Inhouse Theme";



    /**
     * ...
     *
     * @var string
     */

    protected $author = "Einrichtungshaus Ostermann GmbH & Co. KG";



    /**
     * ...
     *
     * @var string
     */

    protected $license = "New BSD";



    /**
     * ...
     *
     * @var array
     */

    protected $javascript = array(
        'src/js/jquery.ost-image-zoom.js'
    );

}

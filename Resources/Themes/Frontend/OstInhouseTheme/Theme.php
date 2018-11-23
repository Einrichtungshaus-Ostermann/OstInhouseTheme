<?php declare(strict_types=1);

/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Inhouse Theme
 *
 * @package   OstInhouseTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

namespace Shopware\Themes\OstInhouseTheme;

use Shopware\Components;

class Theme extends Components\Theme
{
    /**
     * ...
     *
     * @var string
     */
    protected $extend = 'Responsive';

    /**
     * ...
     *
     * @var string
     */
    protected $name = 'Inhouse Theme';

    /**
     * ...
     *
     * @var string
     */
    protected $description = 'Inhouse Theme';

    /**
     * ...
     *
     * @var string
     */
    protected $author = 'Einrichtungshaus Ostermann GmbH & Co. KG';

    /**
     * ...
     *
     * @var string
     */
    protected $license = 'New BSD';

    /**
     * ...
     *
     * @var bool
     */
    protected $injectBeforePlugins = true;

    /**
     * ...
     *
     * @var array
     */
    protected $javascript = [
        'src/js/override/jquery.loading-indicator.js',
        'src/js/override/jquery.modal.js',
        'src/js/override/jquery.overlay.js',
        'src/js/jquery.ost-image-zoom.js',
        'src/js/jquery.ost-article-tabs.js',
        'src/js/jquery.ost-sticky-filter.js'
    ];

    /**
     * {@inheritdoc}
     */
    public function createConfig( Components\Form\Container\TabContainer $container )
    {
        // create our attribute tab
        $tab = $this->createTab( "attribute_tab", "Attribute" );

        // create fieldset
        $fieldset = $this->createFieldSet( "attribute_fieldset", "Attribute" );

        // create every fieldset
        $fieldset->addElement( $this->createTextField( "attribute_company", "Firma", "attr1" ) );
        $fieldset->addElement( $this->createTextField( "attribute_shipping_costs", "Versandkosten", "attr8" ) );
        $fieldset->addElement( $this->createTextField( "attribute_shipping_method", "Versandart", "attr13" ) );
        $fieldset->addElement( $this->createTextField( "attribute_delivery_time", "Lieferzeit", "attr12" ) );
        $fieldset->addElement( $this->createTextField( "attribute_dispo", "Disposition", "attr11" ) );
        $fieldset->addElement( $this->createTextField( "attribute_fullservice", "Vollservice", "attr18" ) );
        $fieldset->addElement( $this->createTextField( "attribute_assembly_surcharge", "Montagekosten", "attr16" ) );

        // add it
        $tab->addElement( $fieldset );
        $container->addTab( $tab );
    }
}

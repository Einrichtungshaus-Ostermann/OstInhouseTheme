<?php declare(strict_types=1);

/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Inhouse Theme
 *
 * Inhouse Theme
 *
 * 1.0.0
 * - initial release
 *
 * 1.0.1
 * - removed whitespace on top of listing
 *
 * 1.0.2
 * - added image-zoom js in desktop viewport
 * - removed more whitespace on top of listing
 *
 * 1.0.3
 * - fixed image-zoom js
 *
 * 1.0.4
 * - fixed article details and search input for tablet viewport
 *
 * 1.0.5
 * - fixed header for exactly that one pixel tablet viewport width
 *
 * 1.0.6
 * - fixed article details for exactly that one pixel tablet landscape viewport width
 *
 * 1.0.7
 * - fixed header again for exactly that one pixel tablet viewport width
 *
 * 1.0.8
 * - removed top margin from registration
 *
 * 1.0.9
 * - removed agb checkbox
 *
 * 1.0.10
 * - removed close button from every modal popup
 *
 * 1.0.11
 * - removed usage of let for grunt
 *
 * 1.0.12
 * - removed add-product form from checkout/cart
 * - removed voucher checkbox from checkout/cart
 * - removed additional article details from checkout/confirm
 *
 * 1.0.13
 * - show ost-consultant advance payment and ost-checkout-signature in one row
 *   in checkout/confirm
 *
 * 1.0.14
 * - added floor as additional field 1 in customer registration
 *
 * 1.0.15
 * - remove benefit footer in checkout
 *
 * 1.0.16
 * - fixed jquery overrides
 *
 * 1.0.17
 * - added salesman-finder icon
 *
 * 1.0.18
 * - fixed 3:4 aspect ratio for article images in listing
 *
 * 1.0.19
 * - added support for ost-article-family
 *
 * 1.0.20
 * - added css for ost-article-family product-slider
 *
 * 1.0.21
 * - fixed css for ost-article-family product-slider
 *
 * 1.0.22
 * - added close button to image-gallery modal
 *
 * @package   OstInhouseTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

namespace OstInhouseTheme;

use Shopware\Components\Plugin;
use Shopware\Components\Plugin\Context;
use Symfony\Component\DependencyInjection\ContainerBuilder;

class OstInhouseTheme extends Plugin
{
    /**
     * ...
     *
     * @param ContainerBuilder $container
     */
    public function build(ContainerBuilder $container)
    {
        // set plugin parameters
        $container->setParameter('ost_inhouse_theme.plugin_dir', $this->getPath() . '/');
        $container->setParameter('ost_inhouse_theme.view_dir', $this->getPath() . '/Resources/views/');

        // call parent builder
        parent::build($container);
    }

    /**
     * Activate the plugin.
     *
     * @param Context\ActivateContext $context
     */
    public function activate(Context\ActivateContext $context)
    {
        // clear complete cache after we activated the plugin
        $context->scheduleClearCache($context::CACHE_LIST_ALL);
    }

    /**
     * Install the plugin.
     *
     * @param Context\InstallContext $context
     *
     * @throws \Exception
     */
    public function install(Context\InstallContext $context)
    {
        // install the plugin
        $installer = new Setup\Install(
            $this,
            $context,
            $this->container->get('models'),
            $this->container->get('shopware_attribute.crud_service')
        );
        $installer->install();

        // update it to current version
        $updater = new Setup\Update(
            $this,
            $context
        );
        $updater->install();

        // call default installer
        parent::install($context);
    }

    /**
     * Update the plugin.
     *
     * @param Context\UpdateContext $context
     */
    public function update(Context\UpdateContext $context)
    {
        // update the plugin
        $updater = new Setup\Update(
            $this,
            $context
        );
        $updater->update($context->getCurrentVersion());

        // call default updater
        parent::update($context);
    }

    /**
     * Uninstall the plugin.
     *
     * @param Context\UninstallContext $context
     *
     * @throws \Exception
     */
    public function uninstall(Context\UninstallContext $context)
    {
        // uninstall the plugin
        $uninstaller = new Setup\Uninstall(
            $this,
            $context,
            $this->container->get('models'),
            $this->container->get('shopware_attribute.crud_service')
        );
        $uninstaller->uninstall();

        // clear complete cache
        $context->scheduleClearCache($context::CACHE_LIST_ALL);

        // call default uninstaller
        parent::uninstall($context);
    }
}

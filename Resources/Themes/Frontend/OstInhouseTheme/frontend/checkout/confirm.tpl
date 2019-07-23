
{* file to extend *}
{extends file='parent:frontend/checkout/confirm.tpl'}



{* agb is always checked *}
{block name='frontend_checkout_confirm_agb_checkbox'}
    <span class="block column--checkbox">
        {if !{config name='IgnoreAGB'}}
            <input type="checkbox" required="required" aria-required="true" id="sAGB" name="sAGB" checked="checked" data-invalid-tos-jump="true" />
        {/if}
    </span>
{/block}



{* ... *}
{block name='frontend_checkout_confirm_left_payment_method_headline'}
    <div class="panel--title is--underline payment--title">
        {s name="confirm-header-payment-shipping"}Zahlungs- und Lieferart{/s}
    </div>
{/block}



{* ... *}
{block name='frontend_checkout_confirm_left_payment_content'}
    <div class="panel--body is--wide payment--content">
        <table>
            <tr>
                <td>{s name="confirm-info-payment-method"}Zahlungsart:{/s}</td>
                <td>{$sUserData.additional.payment.description}</td>
            </tr>
            <tr>
                <td>{s name="confirm-info-dispatch-method"}Lieferart:{/s}</td>
                <td>{$sDispatch.name}</td>
            </tr>
        </table>
    </div>
{/block}



{* move the "select other address" into the button container *}
{* for three different scenarios and blocks *}
{block name="frontend_checkout_confirm_information_addresses_shipping_panel_actions_select_address"}{/block}
{block name="frontend_checkout_confirm_information_addresses_shipping_panel_actions_change_address"}
    {$smarty.block.parent}
    <a href="{url controller=address}"
       class="btn"
       data-address-selection="true"
       data-sessionKey="checkoutShippingAddressId"
       data-id="{$activeShippingAddressId}"
       title="{s name="confirm-address-select-link"}Andere Adresse wählen{/s}">
        {s name="confirm-address-select-link"}Andere Adresse wählen{/s}
    </a>
{/block}

{* second block *}
{block name="frontend_checkout_confirm_information_addresses_billing_panel_actions_select_address"}{/block}
{block name="frontend_checkout_confirm_information_addresses_billing_panel_actions_change_address"}
    {$smarty.block.parent}
    <a href="{url controller=address}"
       class="btn"
       data-address-selection="true"
       data-sessionKey="checkoutBillingAddressId"
       data-id="{$activeBillingAddressId}"
       title="{s name="confirm-address-select-link"}Andere Adresse wählen{/s}">
        {s name="confirm-address-select-link"}Andere Adresse wählen{/s}
    </a>
{/block}

´{* third block *}
{block name="frontend_checkout_confirm_information_addresses_equal_panel_actions_select_address"}{/block}
{block name='frontend_checkout_confirm_information_addresses_equal_panel_shipping_add_address'}
    {$smarty.block.parent}
    <a href="{url controller=address}"
       class="btn"
       title="{s name="confirm-address-select-link"}Andere Adresse wählen{/s}"
       data-address-selection="true"
       data-sessionKey="checkoutBillingAddressId,checkoutShippingAddressId"
       data-id="{$activeBillingAddressId}">
        {s name="confirm-address-select-link"}Andere Adresse wählen{/s}
    </a>
{/block}

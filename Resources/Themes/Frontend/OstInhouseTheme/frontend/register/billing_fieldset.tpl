
{* file to extend *}
{extends file="parent:frontend/register/billing_fieldset.tpl"}



{* additional address line 1 *}
{block name='frontend_register_billing_fieldset_input_addition_address_line1'}

    {* configuration *}
    {$floor = []}
    {$floor['outerClass'] = "register--additional-line1"}
    {$floor['selectClass'] = ""}
    {$floor['innerContainer'] = true}
    {$floor['id'] = "additionalAddressLine1"}
    {$floor['name'] = "register[billing][additionalAddressLine1]"}
    {$floor['error'] = isset($error_flags.additionalAddressLine1)}
    {$floor['value'] = $form_data.additionalAddressLine1}

    {* include floor selection *}
    {include file="frontend/_includes/account--floor-selection.tpl" config=$floor}

{/block}



{* set germany as default if no form data is given *}
{block name='frontend_register_billing_fieldset_input_country'}

    {* set germany as default *}
    {if $form_data.country|intval === 0}
        {$form_data.country = 2}
    {/if}

    {* prepend the country *}
    {$smarty.block.parent}

{/block}



{* ... *}
{block name='frontend_register_billing_fieldset_different_shipping'}
    {if !$update}
        <p>
            {s name="alternate-shipping-address"}Eine abweichende Lieferadresse kann im weiteren Bestellprozess angegeben werden.{/s}
        </p>
    {/if}
{/block}

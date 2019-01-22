
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

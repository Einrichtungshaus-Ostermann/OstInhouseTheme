
{* file to extend *}
{extends file='parent:frontend/checkout/confirm_header.tpl'}



{* ... *}
{block name='frontend_checkout_cart_header_name'}
    <div class="panel--th column--product block">
        {s name="cart-column-name"}Auftrags-Positionen{/s}
    </div>
{/block}
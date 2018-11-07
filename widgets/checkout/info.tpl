
{* file to extend *}
{extends file='parent:widgets/checkout/info.tpl'}



{* remove everything except the cart item *}
{* we only hide the cart item because the offcanvas menu needs it *}
{block name='frontend_index_checkout_actions_notepad'}{/block}
{block name='frontend_index_checkout_actions_my_options'}{/block}

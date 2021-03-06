
{* file to extend *}
{extends file='parent:frontend/listing/listing_ajax.tpl'}



{* add our custom listing templates *}
{block name="frontend_listing_list_inline_ajax"}

    {if $sCategoryContent.template == 'listing_4column.tpl'}
        {foreach $sArticles as $sArticle}
            {include file="frontend/listing/product-box/box-4column.tpl" productBoxLayout="4column"}
        {/foreach}
    {elseif $sCategoryContent.template == 'listing_5column.tpl'}
        {foreach $sArticles as $sArticle}
            {include file="frontend/listing/product-box/box-5column.tpl" productBoxLayout="5column"}
        {/foreach}
    {elseif $sCategoryContent.template == 'listing_6column.tpl'}
        {foreach $sArticles as $sArticle}
            {include file="frontend/listing/product-box/box-6column.tpl" productBoxLayout="6column"}
        {/foreach}
    {else}
        {$smarty.block.parent}
    {/if}

{/block}

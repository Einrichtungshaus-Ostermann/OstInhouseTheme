
{* file to extend *}
{extends file='parent:frontend/index/index.tpl'}



{* hide header if we have the flag within get *}
{block name='frontend_index_body_classes'}{strip}{$smarty.block.parent} {if $smarty.get.hideHeader == "1"}has--no-header{/if}{/strip}{/block}

{* remove top bar *}
{block name='frontend_index_top_bar_container'}{/block}

{* remove footer *}
{block name="frontend_index_footer"}{/block}

{* remove breadcrumb *}
{block name='frontend_index_breadcrumb'}{/block}

{* remove top categories *}
{block name='frontend_index_navigation_categories_top'}{/block}

{* remove last seen articles *}
{block name='frontend_index_left_last_articles'}{/block}
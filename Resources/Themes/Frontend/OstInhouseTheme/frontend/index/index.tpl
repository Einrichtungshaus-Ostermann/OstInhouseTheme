
{* file to extend *}
{extends file='parent:frontend/index/index.tpl'}



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
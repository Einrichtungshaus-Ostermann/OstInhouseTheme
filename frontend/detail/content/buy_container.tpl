
{* file to extend *}
{extends file='parent:frontend/detail/content/buy_container.tpl'}



{* remove meta stuff *}
{block name='frontend_detail_rich_snippets_brand'}{/block}
{block name='frontend_detail_rich_snippets_weight'}{/block}
{block name='frontend_detail_rich_snippets_height'}{/block}
{block name='frontend_detail_rich_snippets_width'}{/block}
{block name='frontend_detail_rich_snippets_depth'}{/block}
{block name='frontend_detail_rich_snippets_release_date'}{/block}

{* remove email notification *}
{block name='frontend_detail_index_notification'}{/block}

{* remove buy button *}
{block name="frontend_detail_index_buybox"}{/block}



{* add h1 title *}
{block name='frontend_detail_index_buy_container_inner'}

    <h1 class="product--title" itemprop="name" style="margin-top: 0;">
        {$sArticle.articleName}
    </h1>

    {$smarty.block.parent}

{/block}



{* replace attributes with properties *}
{block name='frontend_detail_data_attributes'}

    {if $sArticle.sProperties}

        {foreach $sArticle.sProperties as $sProperty}

            <li class="base-info--entry entry-attribute">
                <span class="entry--label">
                    {$sProperty.name|escape}:
                </span>

                <span class="entry--content">
                    {$sProperty.value|escape}
                </span>
            </li>

        {/foreach}

    {/if}

{/block}



{* add tabs below article details *}
{block name='frontend_detail_index_buy_container_base_info'}

    {$smarty.block.parent}

    {include file="frontend/detail/tabs.tpl"}

{/block}

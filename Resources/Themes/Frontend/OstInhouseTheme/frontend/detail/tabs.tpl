
{* file to extend *}
{extends file="parent:frontend/detail/tabs.tpl"}



{* tab navigation *}
{block name="frontend_detail_tabs_description"}

    {* smarty parent *}
    {$smarty.block.parent}

    {* append our tab *}
    <a href="#" class="tab--link" title="Ähnliche Artikel" data-tabName="similar-articles">Ähnliche Artikel</a>

{/block}



{* tab content *}
{block name="frontend_detail_tabs_content_description"}

    {* smarty parent *}
    {$smarty.block.parent}

    {* our tab container *}
    <div class="tab--container">
        <div class="tab--header">
            <a href="#" class="tab--title" title="Ähnliche Artikel">Ähnliche Artikel</a>
        </div>
        <div class="tab--preview">
            Ähnliche Artikel...
        </div>
        <div class="tab--content">
            {include file="frontend/detail/tabs/similar-articles.tpl"}
        </div>
    </div>

{/block}

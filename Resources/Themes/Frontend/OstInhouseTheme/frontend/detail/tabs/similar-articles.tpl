
{* offcanvas button *}
<div class="buttons--off-canvas">
    <a href="#" title="{"{s name="OffcanvasCloseMenu" namespace="frontend/detail/description"}{/s}"|escape}" class="close--off-canvas">
        <i class="icon--arrow-left"></i>
        {s name="OffcanvasCloseMenu" namespace="frontend/detail/description"}{/s}
    </a>
</div>

{* actual content *}
<div class="content--similar-articles">
    {if $sArticle.sSimilarArticles}
        <div class="similar--content">
            {include file="frontend/_includes/product_slider.tpl" articles=$sArticle.sSimilarArticles}
        </div>
    {/if}
</div>

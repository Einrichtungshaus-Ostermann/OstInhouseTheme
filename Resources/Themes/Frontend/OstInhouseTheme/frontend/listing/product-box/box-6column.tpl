
{* file to extend *}
{extends file='parent:frontend/listing/product-box/box-basic.tpl'}



{* 6 column box content *}
{block name="frontend_listing_box_article_content"}
    <div class="box--content is--rounded">
        <div class="product--info">

            {* image *}
            {include file="frontend/listing/product-box/product-image.tpl"}

            {* name *}
            <a href="{$sArticle.linkDetails}" class="product--title" title="{$sArticle.articleName|escapeHtml}">
                {$sArticle.articleName|truncate:50|escapeHtml}
            </a>

            {* price *}
            <div class="product--price-info">
                {include file="frontend/listing/product-box/product-price.tpl"}
            </div>

        </div>
    </div>
{/block}

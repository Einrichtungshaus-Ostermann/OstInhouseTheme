
{* file to extend *}
{extends file='parent:frontend/plugins/index/delivery_informations.tpl'}



{* replace default delivery information *}
{block name='frontend_widgets_delivery_infos'}

    <div class="product--delivery">

        {* get attributes based on available data *}
        {$package = ( isset( $sArticle.additional_details.attributes.core ) ) ? $sArticle.additional_details.attributes.core->get( "attr13" ) : $sArticle.attr13}

        {* do we have the article in stock? *}
        {if $sArticle.instock > 0}

            {* are we sending as default dhl package? *}
            {if $package == "P"}

                <p class="delivery--information">
                <span class="delivery--text delivery--green">
                    <i class="delivery--status-icon delivery--status-green"></i>
                    {s name="detail-data-shipping--in-stock--package"}Sofort lieferbar, Lieferzeit ca. 1 - 3 Werktage{/s}
                </span>
                </p>

            {else}

                <p class="delivery--information">
                <span class="delivery--text delivery--green">
                    <i class="delivery--status-icon delivery--status-green"></i>
                    {s name="detail-data-shipping--in-stock--truck"}Sofort lieferbar, Lieferzeit ca. 7 - 10 Werktage{/s}
                </span>
                </p>

            {/if}

        {else}

            {* we do not buy the article again *}
            {if $sArticle.laststock == true}

                <p class="delivery--information">
                <span class="delivery--text delivery--red">
                    <i class="delivery--status-icon delivery--status-red"></i>
                    {s name="detail-data-shipping--no-stock--last-stock"}Derzeit nicht lieferbar{/s}
                </span>
                </p>

            {else}

                <p class="delivery--information">
                <span class="delivery--text delivery--yellow">
                    <i class="delivery--status-icon delivery--status-yellow"></i>
                    {if ( isset( $sArticle.additional_details.attributes.core ) )}
                        {s name="detail-data-shipping--no-stock--delivery-time--checkout"}Lieferzeit ca. {$sArticle.additional_details.attributes.core->get( "attr12" )} Wochen{/s}
                    {else}
                        {s name="detail-data-shipping--no-stock--delivery-time"}Lieferzeit ca. {$sArticle.attr12} Wochen{/s}
                    {/if}
                </span>
                </p>

            {/if}

        {/if}

    </div>

{/block}

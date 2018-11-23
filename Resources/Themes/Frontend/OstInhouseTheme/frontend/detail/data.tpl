
{* file to extend *}
{extends file='parent:frontend/detail/data.tpl'}



{* remove tax information *}
{block name='frontend_detail_data_tax'}{/block}

{* remove unit price *}
{block name='frontend_detail_data_price'}{/block}



{* add delivery information and shipping costs *}
{block name='frontend_detail_data_delivery'}

    {* only show delivery information when we have order-articles *}
    {if $sArticle[$theme.attribute_dispo] == "B"}
        {$smarty.block.parent}
    {/if}



    {* shipping costs... first by company *}
    {if $sArticle[$theme.attribute_company] == "1"}

        {* check if we have a fullservice price *}
        {if $sArticle[$theme.attribute_fullservice] == "2"}

            {* everything included *}
            Vollservicepreis inkl. Lieferung und Montage

        {else}

            {* always shipping costs *}
            Versand: {$sArticle[$theme.attribute_shipping_costs]|currency}

            {* and optional assembly *}
            {if $sArticle[$theme.attribute_assembly_surcharge] > 0}
                Montage zzgl. {$sArticle[$theme.attribute_assembly_surcharge]|currency}
            {/if}

        {/if}

    {elseif $sArticle[$theme.attribute_company] == "3"}

        {* we have ONLY calculated shipping costs *}
        Versand: {$sArticle[$theme.attribute_shipping_costs]|currency}

    {/if}

{/block}

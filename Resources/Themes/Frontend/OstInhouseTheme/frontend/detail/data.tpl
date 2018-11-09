
{* file to extend *}
{extends file='parent:frontend/detail/data.tpl'}



{* remove tax information *}
{block name='frontend_detail_data_tax'}{/block}

{* remove unit price *}
{block name='frontend_detail_data_price'}{/block}



{* add delivery information and shipping costs *}
{block name='frontend_detail_data_delivery'}

    {* only show delivery information when we have order-articles *}
    {if $sArticle.attr11 == "B"}
        {$smarty.block.parent}
    {/if}



    {* shipping costs... first by company *}
    {if $sArticle.attr1 == "1"}

        {* only small articles with own shipping costs *}
        {if $sArticle.attr2 > 90}

            {* display calculated shipping costs *}
            Versand: {$sArticle.attr8|currency}

        {else}

            {* check if we have a fullservice price *}
            {if $sArticle.attr18 == "2"}

                {* everything included *}
                Vollservicepreis inkl. Lieferung und Montage

            {else}

                {* always shipping costs *}
                Versand: {$sArticle.attr15|currency}

                {* and optional assembly *}
                {if $sArticle.attr16 > 0}
                    Montage zzgl. {$sArticle.attr16|currency}
                {/if}

            {/if}

        {/if}

    {elseif $sArticle.attr1 == "3"}

        {* we have ONLY calculated shipping costs *}
        Versand: {$sArticle.attr8|currency}

    {/if}

{/block}

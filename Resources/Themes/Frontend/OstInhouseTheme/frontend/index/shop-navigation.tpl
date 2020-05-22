
{* file to extend *}
{extends file='parent:frontend/index/shop-navigation.tpl'}



{* append back and forth buttons *}
{block name='frontend_index_search'}

    {* parent first *}
    {$smarty.block.parent}

    {* back and forth button *}
    <li onclick="window.history.back()" class="navigation--entry entry--navigaton-back icon--arrow-left3" style=""></li>
    <li onclick="window.history.forward()" class="navigation--entry entry--navigaton-forth icon--arrow-right3" style=""></li>

    {* experimental consultant login button *}
    <li class="icon--evernote ost-consultant--login" style="position: absolute; cursor: pointer; width: 15%; right: 20%; font-size: 50px; opacity: 0;"></li>

    {* salesman finder button *}
    <li class="navigation--entry entry--salesman-finder icon--chat" style=""></li>
    <li class="navigation--entry entry--salesman-finder icon--salesman-finder" style="background-image: url(/custom/plugins/OstSalesmanFinder/Resources/frontend/img/salesman-finder--idle--icon.png)"></li>

    {* mailer icon *}
    {* for pre-version release *}
    {* comment should be removed *}
    {* <li class="navigation--entry entry--mailer icon--mail is--consultant-mailer" style=""></li> *}

{/block}

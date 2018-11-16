
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
    {* <li class="icon--evernote ost-consultant--login" style="font-size: 50px; position: absolute; left: 80%; cursor: pointer;"></li> *}

{/block}

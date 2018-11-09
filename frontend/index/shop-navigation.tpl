
{* file to extend *}
{extends file='parent:frontend/index/shop-navigation.tpl'}



{* append back and forth buttons *}
{block name='frontend_index_search'}

    {$smarty.block.parent}

    <li onclick="window.history.back()" class="icon--arrow-left3" style="font-size: 50px; position: absolute; left: 60%; cursor: pointer;"></li>
    <li onclick="window.history.forward()" class="icon--arrow-right3" style="font-size: 50px; position: absolute; left: 70%; cursor: pointer;"></li>




    <li class="icon--evernote ost-consultant--login" style="font-size: 50px; position: absolute; left: 80%; cursor: pointer;"></li>

{/block}


{* file to extend *}
{extends file='parent:frontend/checkout/finish.tpl'}



{* ... *}
{block name='frontend_checkout_finish_left_payment_method_headline'}
    <div class="panel--title is--underline payment--title">
        {s name="finish-header-information"}Auftrags-Informationen{/s}
    </div>
{/block}



{* ... *}
{block name='frontend_checkout_finish_left_payment_content'}
    <div class="panel--body is--wide payment--content">
        <table>
            <tr>
                <td>{s name="finish-info-id"}Auftrags-Nr.:{/s}</td>
                <td>{$sOrderNumber}</td>
            </tr>
            <tr>
                <td>{s name="finish-payment-method"}Zahlungsart:{/s}</td>
                <td>{$sPayment.description}</td>
            </tr>
            <tr>
                <td>{s name="finish-dispatch-method"}Versandart:{/s}</td>
                <td>{$sDispatch.name}</td>
            </tr>
        </table>
    </div>
{/block}

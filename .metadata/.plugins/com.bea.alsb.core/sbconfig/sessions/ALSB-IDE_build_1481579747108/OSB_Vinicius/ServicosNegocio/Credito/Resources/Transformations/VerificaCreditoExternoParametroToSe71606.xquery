<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosVerificaCreditoExterno" element="ns2:parametrosVerificaCreditoExterno" location="../../../../ESB/Credito/xsd/ParametrosCredito.xsd" ::)
(:: pragma bea:global-element-return element="ns1:ParametrosSerasa" location="../Interfaces/Schemas/Serasa.xsd" ::)

declare namespace ns2 = "http://pucminas.br/SN/Credito";
declare namespace ns1 = "http://serasa.com.br/SN/Serasa";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Vinicius";
declare namespace xf = "http://tempuri.org/OSB_Vinicius/ServicosNegocio/Credito/Resources/Transformations/VerificaCreditoExternoToSerasa/";

declare function xf:VerificaCreditoExternoToSerasa($parametrosVerificaCreditoExterno as element(ns2:parametrosVerificaCreditoExterno))
    as element(ns1:ParametrosSerasa) {
        <ns1:ParametrosSerasa>
            <ns1:num_documento>{ data($parametrosVerificaCreditoExterno/ns2:pessoa/ns0:cnpj) }</ns1:num_documento>
            <ns1:dt_solicitacao>{ fn:current-date() }</ns1:dt_solicitacao>
        </ns1:ParametrosSerasa>
};

declare variable $parametrosVerificaCreditoExterno as element(ns2:parametrosVerificaCreditoExterno) external;

xf:VerificaCreditoExternoToSerasa($parametrosVerificaCreditoExterno)]]></con:xquery>
    <con:dependency location="../../../../ESB/Credito/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_Vinicius/ESB/Credito/xsd/ParametrosCredito"/>
    </con:dependency>
    <con:dependency location="../Interfaces/Schemas/Serasa.xsd">
        <con:schema ref="OSB_Vinicius/ServicosNegocio/Credito/Resources/Interfaces/Schemas/Serasa"/>
    </con:dependency>
</con:xqueryEntry>
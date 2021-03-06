<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosConsultaScore" element="ns1:parametrosConsultaScore" location="../../../../ESB/Credito/xsd/ParametrosCreditoGeral.xsd" ::)
(:: pragma bea:global-element-return element="ns2:parametrosVerificaWhiteList" location="../../../../ESB/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns2 = "http://pucminas.br/SN/Credito";
declare namespace ns1 = "http://pucminas.br/SN/CreditoGeral";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Amaral";
declare namespace xf = "http://tempuri.org/OSB_Amaral/ServicosNegocio/Credito/Resources/Transformations/CreditoGeralParametroToVerificaWhiteListParametro/";

declare function xf:CreditoGeralParametroToVerificaWhiteListParametro($parametrosConsultaScore as element(ns1:parametrosConsultaScore))
    as element(ns2:parametrosVerificaWhiteList) {
        <ns2:parametrosVerificaWhiteList>
            <ns2:pessoa>
                <ns0:id>{ data($parametrosConsultaScore/ns1:pessoa/ns0:id) }</ns0:id>
                <ns0:nome>{ data($parametrosConsultaScore/ns1:pessoa/ns0:nome) }</ns0:nome>
                <ns0:dataNascimento>{ data($parametrosConsultaScore/ns1:pessoa/ns0:dataNascimento) }</ns0:dataNascimento>
                <ns0:cpf>{ data($parametrosConsultaScore/ns1:pessoa/ns0:cpf) }</ns0:cpf>
                <ns0:telefone>{ data($parametrosConsultaScore/ns1:pessoa/ns0:telefone) }</ns0:telefone>
                <ns0:celular>{ data($parametrosConsultaScore/ns1:pessoa/ns0:celular) }</ns0:celular>
            </ns2:pessoa>
        </ns2:parametrosVerificaWhiteList>
};

declare variable $parametrosConsultaScore as element(ns1:parametrosConsultaScore) external;

xf:CreditoGeralParametroToVerificaWhiteListParametro($parametrosConsultaScore)]]></con:xquery>
    <con:dependency location="../../../../ESB/Credito/xsd/ParametrosCreditoGeral.xsd">
        <con:schema ref="OSB_Amaral/ESB/Credito/xsd/ParametrosCreditoGeral"/>
    </con:dependency>
    <con:dependency location="../../../../ESB/Credito/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_Amaral/ESB/Credito/xsd/ParametrosCredito"/>
    </con:dependency>
</con:xqueryEntry>
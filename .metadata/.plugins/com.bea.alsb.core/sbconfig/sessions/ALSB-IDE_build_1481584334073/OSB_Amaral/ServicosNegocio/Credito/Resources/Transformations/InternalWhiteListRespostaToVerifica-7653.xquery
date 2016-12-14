<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$resultadoWhiteList" element="ns2:ResultadoWhiteList" location="../Interfaces/Schemas/InternalWhiteList.xsd" ::)
(:: pragma bea:global-element-return element="ns1:resultadoVerificaWhiteList" location="../../../../ESB/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns2 = "http://whitelist.com.br/SN/WhiteList";
declare namespace ns1 = "http://pucminas.br/SN/Credito";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Amaral";
declare namespace xf = "http://tempuri.org/OSB_Amaral/ServicosNegocio/Credito/Resources/Transformations/InternalWhiteListRespostaToVerificaWhiteListResposta/";

declare function xf:InternalWhiteListRespostaToVerificaWhiteListResposta($resultadoWhiteList as element(ns2:ResultadoWhiteList))
    as element(ns1:resultadoVerificaWhiteList) {
        <ns1:resultadoVerificaWhiteList>
            <ns1:mensagemRetorno>
                <ns0:isAtivo>{ data($resultadoWhiteList/ns2:indica_white_list) }</ns0:isAtivo>
            </ns1:mensagemRetorno>
        </ns1:resultadoVerificaWhiteList>
};

declare variable $resultadoWhiteList as element(ns2:ResultadoWhiteList) external;

xf:InternalWhiteListRespostaToVerificaWhiteListResposta($resultadoWhiteList)]]></con:xquery>
    <con:dependency location="../Interfaces/Schemas/InternalWhiteList.xsd">
        <con:schema ref="OSB_Amaral/ServicosNegocio/Credito/Resources/Interfaces/Schemas/InternalWhiteList"/>
    </con:dependency>
    <con:dependency location="../../../../ESB/Credito/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_Amaral/ESB/Credito/xsd/ParametrosCredito"/>
    </con:dependency>
</con:xqueryEntry>
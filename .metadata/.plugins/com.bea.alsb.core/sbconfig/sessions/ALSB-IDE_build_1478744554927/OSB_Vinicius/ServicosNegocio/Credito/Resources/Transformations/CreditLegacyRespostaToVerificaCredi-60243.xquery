<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$resultadoCreditLegacy" element="ns1:ResultadoCreditLegacy" location="../Interfaces/Schemas/CreditLegacy.xsd" ::)
(:: pragma bea:global-element-return element="ns2:resultadoVerificaCreditoInterno" location="../../../../ESB/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns2 = "http://pucminas.br/SN/Credito";
declare namespace ns1 = "http://creditlegacy.com.br/SN/CreditLegacy";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Amaral";
declare namespace xf = "http://tempuri.org/OSB_Amaral/ServicosNegocio/Credito/Resources/Transformations/CreditLegacyRespostaToVerificaCreditoInternoResposta/";

declare function xf:CreditLegacyRespostaToVerificaCreditoInternoResposta($resultadoCreditLegacy as element(ns1:ResultadoCreditLegacy))
    as element(ns2:resultadoVerificaCreditoInterno) {
        <ns2:resultadoVerificaCreditoInterno>
            <ns2:credito>
                <ns0:pessoa>
                    <ns0:cnpj>{ data($resultadoCreditLegacy/ns1:cpf) }</ns0:cnpj>
                </ns0:pessoa>
            </ns2:credito>
        </ns2:resultadoVerificaCreditoInterno>
};

declare variable $resultadoCreditLegacy as element(ns1:ResultadoCreditLegacy) external;

xf:CreditLegacyRespostaToVerificaCreditoInternoResposta($resultadoCreditLegacy)]]></con:xquery>
    <con:dependency location="../Interfaces/Schemas/CreditLegacy.xsd">
        <con:schema ref="OSB_Amaral/ServicosNegocio/Credito/Resources/Interfaces/Schemas/CreditLegacy"/>
    </con:dependency>
    <con:dependency location="../../../../ESB/Credito/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_Amaral/ESB/Credito/xsd/ParametrosCredito"/>
    </con:dependency>
</con:xqueryEntry>
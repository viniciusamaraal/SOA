##### Especialização em Arquitetura de Software Distribuído
##### Disciplina: Arquitetura Orientada à Serviços (SOA)
##### Trabalho Final: Barramento de Serviços
##### Professor: Biharck Araújo
##### Alunos: Pedro Amaral (68072) e Vinícius Amaral (67652)

Trabalho final da disciplina de Arquitetura Orientada a Serviços

Nossa interpretação sobre a lógica utilizada para a orquestração do serviço:

```javascript
if (valorCreditoExterno > 400)
	return 200;

if (quantidadeRestricoesInternas <= 3)
{
	if (valorCreditoInterno < 200)
		return 500;
	else if (indicadorWhiteList)
		return 900;
}
else
	return 0;

return 1000;
```

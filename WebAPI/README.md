## Script Das tabelas para o banco [BancoTheoLib]
* na pasta: ScriptBanco
*   ScriptTabela_BancoTheoLib.sql

## Antes de executar (Inserir o usuário amd comsenha 1234)
* descomentar a linha 86 do contreller UsuarioController 

**//var resultado = await _usuarioServico.Inserir( new RequisicaoUsuario{ Nome = "adm",Email="adm@adm.com.br", Senha="123456" });**
* Fazer uma chamada ao método da API  [POST] url/Usuario/Inserir

## A soluction (API) está em Onion Architecture.
**Está na pasta: TheoAPI**
* Evitando assim o acoplamento.
* separação de responsabilidades
* Aplicado os conceitos iniciais do SOLID e padrão DDD
* Usado o Microsfot SqlServer 2017
* Para a persistência dos dados foi utilizado o Dapper.
* Documentação com o Swagger

#### Para consumiros métodos de criação e alteração deve primeiro gerar o token:

**Token** 
`/Usuario/login`
    
 * Email: adm@amd.com.br
 * Senha: 123456
 
 
 
## APP Web em angular material 
   *Está na pastas:WepUI_Angular
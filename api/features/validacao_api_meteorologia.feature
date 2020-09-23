# language: pt
@api @meteorologia
Funcionalidade: Consultas meteorológicas via api

  Contexto:
    Dado o endereco da api de meteorologia
    
  @buscaCidade
  Cenário: Busca por cidade
    Quando eu buscar passando a cidade por parametro
    Então a api deve retornar com os dados da meteorologicos da cidade corretamente
    E a api deve responder com status de sucesso
    

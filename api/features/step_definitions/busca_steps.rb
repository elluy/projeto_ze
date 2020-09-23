cidade = Meteorologia.new

Dado('o endereco da api de meteorologia') do
   
  end
  
  Quando('eu buscar passando a cidade por parametro') do
    @retorno = cidade.requisicao('?q=Lisbon&appid=5a9c723e4381d128ee55980b92df7c10') #estou passando chumbada a cidade escolhida e o id gerado pelo site após o cadastro do login no site.
  end
  
  Então('a api deve retornar com os dados da meteorologicos da cidade corretamente') do
    expect(@retorno.parsed_response['sys']['country']).to eq 'PT'  #parsed_response converto para um JSON para conseguir validar o conteudo (nessa validacao verifico que o país seja PT).
    expect(@retorno.parsed_response['name']).to eq 'Lisbon' #espero que o nome da cidade seja 'Lisbon'
    expect(@retorno.parsed_response['coord']['lon']).to eq -9.13
    expect(@retorno.parsed_response['coord']['lat']).to eq 38.72
  end

  E('a api deve responder com status de sucesso') do
    expect(@retorno.code).to eq 200 #espero que o status da requisicao seja 200
    log(@retorno.parsed_response) #exibe todo o retorno da requisicao
  end
  
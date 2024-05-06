Quando('acesso a pagina principal da starbugs') do
    @home.open
end
  
  Entao('eu devo ver uma lista de cafes disponiveis') do
    expect(@home.coffee_list.size).to be > 0
end
  
Dado('que estou na pagina principal da starbugs') do
    @home.open
end

Dado('que desejo comprar o seguinte produto:') do |table|
    @product = table.rows_hash
end   
  
Quando('inicio a compra desse item') do
   @home.buy(@product[:name])
    sleep 3

end
  
Entao('devo ver a pagina de Checkout com os detalhes do produto') do
   @checkout.assert_product_details(@product)

end
  
Entao('o valor total da compra deve ser {string}') do |total_price|
    @checkout.assert_total_price(total_price)
    sleep 2
end

Dado('que desejo comprar o cafe {string}') do |string,table|
    @product = table.rows_hash
end

  
Entao('devo ver popup informando que o produto esta indisponivel') do
   popup = find('.swal2-html-container')
   expect(popup.text).to eql 'Produto indisponível'

   @popup.have_text('Produto indisponivel')
end
  
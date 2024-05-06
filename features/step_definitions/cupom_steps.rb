Dado('que iniciei a compra do item:') do |table|
    @product = table.rows_hash

    @home.open
    @home.buy(@product[:name])
end
  
  Quando('aplico o cupom: {string}') do |cupom_code|
    @checkout.set_discount(cupom_code)

end
  
  Entao('o valor final da compra deve ser atualizado para {string}') do |final_price|
    @checkout.assert_total_price(final_price)
end

Entao('devo ver a notificação: {string}') do |notice|
   @checkout.assert_notice(notice)
end
  
  Entao('o valor final da compra deve permanecer o mesmo') do
    @checkout.assert_total_price(@product[:total])
end
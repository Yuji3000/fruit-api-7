class Fruit
  attr_reader :name,
              :family,
              :order,
              :genus,
              :calories,
              :fat,
              :sugar,
              :carbohydrates,
              :protein
  def initialize(response)
    @name = response[:name]
    @family = response[:family]
    @order = response[:order]
    @genus = response[:genus]
    @calories = response[:nutritions][:calories]
    @fat = response[:nutritions][:fat]
    @sugar = response[:nutritions][:sugar]
    @carbohydrates = response[:nutritions][:carbohydrates]
    @protein = response[:nutritions][:protein]
  end
end
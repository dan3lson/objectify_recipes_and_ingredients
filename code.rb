class Ingredient

  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end

ingredient = Ingredient.new(47.0, "lb", "Brussels Sprouts")

puts
puts "Part 1: "
puts "****************************************"

puts ingredient.summary

puts
puts "Part 2: "
puts "****************************************"

class Recipe

  def initialize(name, ingredients, instructions )
    @name = name
    @ingredients = ingredients
    @instructions = instructions
  end

  def name
    "Name: #{@name}"
  end

  def ingredients
    parts = ""
    @ingredients.each do |ingredient|
      parts << "- " << ingredient.summary << "\n"
    end
    parts
  end

  def instructions
    instructions = ""
    step = 1
    @instructions.each do |instruction|
      instructions << "#{step}. #{instruction} \n"
      step += 1
    end
    instructions
  end

  def summary
    <<SUMMARY
#{name}

#{ingredients}
#{instructions}
SUMMARY
  end
end

name = [
  { horizons: "Roasted Brussels Sprouts" },
  { danelsons: "Peanut Butter and Jelly Sandwich" }
]

ingredients = [
  {
    horizons: [
      Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
      Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
      Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
      Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
    ]
  },
  {
    danelsons: [
    Ingredient.new(1.0, "lb(s)", "Bread"),
    Ingredient.new(3.0, "tbspn(s)", "Peanut Butter"),
    Ingredient.new(0.75, "tspn(s)", "Jelly"),
    ]
  }
]

instructions = [
  {
    horizons: [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ]
  },
  {
    danelsons: [
    "Get bottom-layer of bread",
    "Get peanut butter",
    "Get jelly",
    "Spread peanut butter on bottom-layer bread",
    "Spread jelly on top of peanut butter",
    "Place top-layer bread on top of peanut butter and jelly"
    ]
  }
]

horizons_recipe = Recipe.new(
  name[0][:horizons],
  ingredients[0][:horizons],
  instructions[0][:horizons]
)
danelsons_recipe = Recipe.new(
  name[1][:danelsons],
  ingredients[1][:danelsons],
  instructions[1][:danelsons]
)

puts horizons_recipe.summary
puts danelsons_recipe.summary

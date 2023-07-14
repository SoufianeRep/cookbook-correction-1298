# TODO: Define your View class here, to display elements to the user and ask them for their input
class View
  def display_list(recipes) # array of instances
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}: #{recipe.description}"
    end
  end

  def ask_for_name
    puts "What is the name of your recipe"
    return gets.chomp
  end

  def ask_for_desc
    puts "What is the name of your recipe"
    return gets.chomp
  end

  # def ask_for_info
  #   puts "What is the name of your recipe"
  #   name = gets.chomp
  #   puts "What is the name of your recipe"
  #   description = gets.chomp
  #   return [name, description]
  # end

  def ask_for_index
    puts "Which recipe?"
    return gets.chomp.to_i - 1
  end
end

#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def add
    # ask for the name of the recipe (view)
    name = @view.ask_for_name
    # qsk for the description of recipe (view)
    desc = @view.ask_for_desc
    # create and instance of a recipe (model)
    recipe = Recipe.new(name, desc)
    # ask the repository to create (repo)
    @cookbook.create(recipe)
  end

  def remove
    # display the list of recipe (view)
    display_recipes
    # ask the user for the index of the recipe (view)
    index = @view.ask_for_index
    # delete de instance (repo)
    @cookbook.destroy(index)
  end

  private

  def display_recipes
    # 1. get the list of recipes (repo)
    recipes = @cookbook.all
    # 2. display the recipes (view)
    @view.display_list(recipes)
  end
end

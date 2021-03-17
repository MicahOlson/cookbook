class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :instruction_set
      t.string :ingredient_set

      t.timestamps
    end
  end
end

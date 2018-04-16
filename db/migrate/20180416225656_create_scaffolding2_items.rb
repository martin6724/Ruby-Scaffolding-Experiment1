class CreateScaffolding2Items < ActiveRecord::Migration[5.2]
  def change
    create_table :scaffolding2_items do |t|
      t.string :description

      t.timestamps
    end
  end
end

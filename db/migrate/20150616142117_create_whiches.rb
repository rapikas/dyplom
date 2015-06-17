class CreateWhiches < ActiveRecord::Migration
  def change
    create_table :whiches do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end

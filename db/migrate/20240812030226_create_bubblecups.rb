class CreateBubblecups < ActiveRecord::Migration[7.1]
  def change
    create_table :bubblecups do |t|
      t.integer :year
      t.string :name

      t.timestamps
    end
  end
end

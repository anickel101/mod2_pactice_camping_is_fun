class CreateSignUps < ActiveRecord::Migration[6.0]
  def change
    create_table :sign_ups do |t|
      t.integer :time
      t.belongs_to :camper
      t.belongs_to :activity

      t.timestamps
    end
  end
end

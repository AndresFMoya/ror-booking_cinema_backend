class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.bigint :card, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.bigint :phone

      t.timestamps
    end
  end
end

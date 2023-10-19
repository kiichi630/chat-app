class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :room, null: false, foregin_key: true
      t.references :user, null: false, foregin_key: true
      t.timestamps
    end
  end
end

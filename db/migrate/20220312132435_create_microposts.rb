class CreateMicroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :microposts do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    # add index for each microposts so that we can retrive them in reverse order.
    add_index :microposts, [:user_id, :created_at]
  end
end

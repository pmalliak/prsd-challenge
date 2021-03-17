class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email, index: true, unique: true
      t.date    :birthday
      t.timestamps
    end
  end
end

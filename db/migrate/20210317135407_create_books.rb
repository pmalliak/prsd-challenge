class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string      :title
      t.text        :description
      t.string      :isbn, index: true, unique: true
      t.boolean     :visible, default: false, null: false
      t.date        :creation_date
      t.references  :author
      t.references  :publisler
      t.timestamps
    end
  end
end

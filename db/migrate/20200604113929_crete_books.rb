class CreteBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.stirng :author
      t.text :description
      t.integer :year
      t.integer :rating
      t.string :status
    end
  end
end

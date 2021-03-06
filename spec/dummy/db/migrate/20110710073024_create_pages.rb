class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.integer :id
      t.text :content
      t.integer :number
      t.references :chapter

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end

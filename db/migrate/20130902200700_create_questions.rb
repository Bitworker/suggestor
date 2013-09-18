class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :category
      t.string     :title
      t.string     :url_title
      t.text       :description
      t.string     :link
      
      t.timestamps
    end
  end
end

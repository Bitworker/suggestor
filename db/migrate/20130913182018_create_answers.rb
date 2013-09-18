class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to  :question
      t.string      :text
      t.text        :redirect_ids
      t.string      :result
      t.string      :result_link
      
      t.timestamps
    end
  end
end

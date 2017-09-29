class CreatePalindromes < ActiveRecord::Migration[5.1]
  def change
    create_table :palindromes do |t|
      t.string :text

      t.timestamps
    end
  end
end

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")
ActiveRecord::Schema.define(:version => 1) do
  create_table :movies do |t|
    t.column :name, :string
  end

  create_table :actors do |t|
    t.column :name, :string
  end
end

class Movie < ActiveRecord::Base
  has_many :actors
end

class Actor < ActiveRecord::Base; end

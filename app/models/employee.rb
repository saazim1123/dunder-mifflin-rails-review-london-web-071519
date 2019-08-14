class Employee < ApplicationRecord
    belongs_to :dog
    validates_uniqueness_of :alias, :message => 'Alias already in use. Please use a different alias'
    validates_uniqueness_of :title, :message => 'Title already in use. Please use a different title'
end

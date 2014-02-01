
class NilClass
  def method_missing(name, *args, &block)
  end
end

class Event < Sequel::Model

  one_to_many :abstracts
  
  plugin :boolean_readers
  plugin :prepared_statements
  plugin :prepared_statements_safe
  plugin :validation_helpers

  def validate
    super
    validates_presence :name
  end
end

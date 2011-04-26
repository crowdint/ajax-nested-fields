module NestedFields
  def self.included(base)
    base.extend(ClassMethods)
  end
end

class ActionView::Base
  include NestedFields
end

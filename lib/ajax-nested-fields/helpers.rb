module AjaxNestedFields
  module Helpers
    def just_a_helper
      "success"
    end

    def link_to_remove_fields(name, f, container)
      f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this, '#{container}')")
    end

    def link_to_new_child(f, association)
      object = f.object.class.reflect_on_association(association.to_sym).klass.new

      fields = f.fields_for(association, object, :child_index => "new_#{association.singularize}") do |builder|
        render("#{association.singularize}_fields", :f => builder)
      end

      link_to_function "Add #{association}", h("add_child_field('#{association}', 'new_#{association.singularize}', \"#{escape_javascript(fields)}\")")
    end
  end
end

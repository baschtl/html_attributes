require "html_attributes/array"
require "html_attributes/hash"

if defined?(ActionView::Helpers::TagHelper)

  require "html_attributes/rails/tag_helper"

  ActionView::Helpers::TagHelper.module_eval do
    include HtmlAttributes::TagHelper
  end

  ActionView::Helpers::TagHelper::BOOLEAN_ATTRIBUTES.merge(::HtmlAttributes::BOOLEAN_ATTRIBUTES)
  ActionView::Helpers::TagHelper::BOOLEAN_ATTRIBUTES.merge(ActionView::Helpers::TagHelper::BOOLEAN_ATTRIBUTES.map(&:to_sym))

end

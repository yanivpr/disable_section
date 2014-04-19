require 'disable_section/view_helpers'

module DisableSection
  class Railtie < ::Rails::Railtie
    initializer "disable_section.view_helpers" do |app|
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
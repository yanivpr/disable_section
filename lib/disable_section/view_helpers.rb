module DisableSection
  module ViewHelpers

    DEFAULT_ELEMENTS = %w(a input select textarea button)

    def disable_section(should_be_disabled = true, elements = DEFAULT_ELEMENTS, &block)
      content_tag :div,
                  { class: (should_be_disabled ? 'disabled-section' : ''),
                  data: { elements: elements } },
                  &block
    end

  end
end
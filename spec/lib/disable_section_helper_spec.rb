require 'spec_helper'
require 'action_view/helpers'
require 'disable_section/view_helpers'

describe "DisableSection::ViewHelpers" do
  include DisableSection::ViewHelpers
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::FormTagHelper
  include ActionView::Context

  context "disable_section" do

    it "no block" do
      expected = "<div>#{ERB::Util.html_escape({:class=>'disabled-section', :data=>{:elements=>['a', 'input', 'select', 'textarea', 'button']}})}</div>"
      result = disable_section

      result.should == expected
    end

    it "with no predicate and block containing div" do
      expected = "<div class=\"disabled-section\" data-elements=\"#{ERB::Util.html_escape(['a','input','select','textarea','button']).gsub(' ', '')}\"><div>#{ERB::Util.html_escape({:id=>'inner'})}</div></div>"
      result = disable_section do
         content_tag :div, id: 'inner'
      end

      result.should == expected
    end

    it "with true predicate and block containing div" do
      expected = "<div class=\"disabled-section\" data-elements=\"#{ERB::Util.html_escape(['a','input','select','textarea','button']).gsub(' ', '')}\"><div>#{ERB::Util.html_escape({:id=>'inner'})}</div></div>"
      predicate = true
      result = disable_section predicate do
        content_tag :div, id: 'inner'
      end

      result.should == expected
    end

    it "with false predicare block containing input" do
      expected = "<div class=\"\" data-elements=\"#{ERB::Util.html_escape(['a','input','select','textarea','button']).gsub(' ', '')}\"><input id=\"_:id___inner__\" name=\"#{ERB::Util.html_escape({:id=>'inner'})}\" type=\"text\" /></div>"
      result = disable_section false do
        text_field_tag id: 'inner'
      end

      result.should == expected
    end

  end
end
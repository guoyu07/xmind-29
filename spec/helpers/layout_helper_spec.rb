require "spec_helper"

describe LayoutHelper do

  context "#css_class_active_for" do
    it "returns 'active' if the current path matches link path" do
      helper.stub(:current_path).and_return('/about')
      helper.stub(:about_path).and_return('/about')
      expect(helper.css_class_active_for(about_path)).to match /active/
    end

    it "returns 'inactive' if the current path does not match the link path" do
      helper.stub(:current_path).and_return('/')
      helper.stub(:about_path).and_return('/about')
      expect(helper.css_class_active_for(about_path)).to match /inactive/
    end
  end

end
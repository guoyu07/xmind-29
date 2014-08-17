# helper is an instance of ActionView::Base configured with the
# ApplicationHelper and all of Rails' built-in helpers

require "spec_helper"

describe ApplicationHelper do

  context '#controller_action_name' do
    it "calls #action_name" do
      helper.should_receive(:action_name)
      helper.controller_action_name
    end

    it 'calls #controller_name' do
      helper.should_receive(:controller_name)
      helper.controller_action_name
    end

    it 'returns a concatination of #controller_name and #action_name' do
      helper.stub(:controller_name).and_return('welcome')
      helper.stub(:action_name).and_return('about')
      helper.controller_action_name.should eq('welcome#about')
    end
  end

  context "#display_active" do
    it "returns 'active' if the current controller action equals the argument" do
      helper.stub(:controller_action_name).and_return('welcome#about')
      expect(helper.display_active('welcome#about')).to match /active/
    end

    it "returns '' if the current controller action does not equal the argument" do
      helper.stub(:controller_action_name).and_return('welcome#about')
      helper.display_active('welcome#contact').should eq('')
    end
  end

end
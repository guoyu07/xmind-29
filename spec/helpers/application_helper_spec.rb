# helper is an instance of ActionView::Base configured with the
# ApplicationHelper and all of Rails' built-in helpers

require "spec_helper"

describe ApplicationHelper do
  context '#current_path' do
    it "returns #request.env['PATH_INFO']" do
      helper.request.env['PATH_INFO'] = '/welcome'
      helper.current_path.should eq('/welcome')
    end
  end
end
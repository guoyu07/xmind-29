require 'spec_helper'

describe 'layouts/application' do
  context '_navbar' do
    it 'renders _navbar partial' do
      render
      expect(view).to render_template(partial: '_navbar')
    end

    it 'includes "About" pill' do
      render 
      expect(rendered).to match /About/
    end

    it 'includes "Contact" pill' do
      render 
      expect(rendered).to match /Contact/
    end

    it 'includes "Portfolio" pill' do
      render 
      expect(rendered).to match /Portfolio/
    end
  end
end


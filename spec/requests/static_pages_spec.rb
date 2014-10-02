require 'spec_helper'

describe "StaticPages" do
  subject { page }

  shared_examples_for "all static pages" do
  	it { should have_selector('h1', text: heading) }
  	it { should have_title(full_title(page_title)) }
  end

  describe "home page" do
  	before { visit root_path }
  	let(:page_title) { '' }
  	let(:heading) { '' }

  	it_should_behave_like "all static pages"
  	it { should_not have_title('| Home') }
  end

  describe "help page" do
  	before { visit help_path }
  	let(:page_title) { 'Help' }
  	let(:heading) { 'Help' }

  	it_should_behave_like "all static pages"
  end

  describe "about page" do
  	before { visit about_path }
  	let(:page_title) { 'About' }
  	let(:heading) { 'About' }

  	it_should_behave_like "all static pages"
  end

  describe "contact page" do
  	before { visit contact_path }
  	let(:page_title) { 'Contact' }
  	let(:heading) { 'Contact' }

  	it_should_behave_like "all static pages"
  end
end
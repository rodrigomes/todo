require 'spec_helper'

describe "projetos/show.html.erb" do
  before(:each) do
    @projeto = assign(:projeto, stub_model(Projeto,
      :nome => "Nome",
      :cliente => "Cliente",
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cliente/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
  end
end

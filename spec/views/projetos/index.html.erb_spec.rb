require 'spec_helper'

describe "projetos/index.html.erb" do
  before(:each) do
    assign(:projetos, [
      stub_model(Projeto,
        :nome => "Nome",
        :cliente => "Cliente",
        :descricao => "Descricao"
      ),
      stub_model(Projeto,
        :nome => "Nome",
        :cliente => "Cliente",
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of projetos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cliente".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end

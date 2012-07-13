require 'spec_helper'

describe "projetos/edit.html.erb" do
  before(:each) do
    @projeto = assign(:projeto, stub_model(Projeto,
      :nome => "MyString",
      :cliente => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders the edit projeto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projetos_path(@projeto), :method => "post" do
      assert_select "input#projeto_nome", :name => "projeto[nome]"
      assert_select "input#projeto_cliente", :name => "projeto[cliente]"
      assert_select "input#projeto_descricao", :name => "projeto[descricao]"
    end
  end
end

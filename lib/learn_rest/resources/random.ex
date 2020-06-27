defmodule LearnRest.Random do


  use PlugRest.Resource

  def allowed_methods(conn, state) do
    {["GET"], conn, state}
  end

  def content_types_accepted(conn, state) do
    {[{"text/html", :to_html}], conn, state}
  end


  def to_html(conn, state) do
    {" Random Number is : #{Integer.to_string(Enum.random(1..1000))}", conn, state}
  end






end

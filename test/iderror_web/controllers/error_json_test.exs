defmodule IderrorWeb.ErrorJSONTest do
  use IderrorWeb.ConnCase, async: true

  test "renders 404" do
    assert IderrorWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert IderrorWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end

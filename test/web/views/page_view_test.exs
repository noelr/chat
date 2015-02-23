defmodule Chat.PageViewTest do
  use ExUnit.Case

  test "message_user" do
    message = %{name: "Guest 1", body: "Hallo Welt"}
    assert Chat.PageView.message_user(message) == "Guest 1"
  end

  test "message_body" do
    message = %{name: "Guest 1", body: "Hallo Welt"}
    assert Chat.PageView.message_body(message) == "Hallo Welt"
  end
end

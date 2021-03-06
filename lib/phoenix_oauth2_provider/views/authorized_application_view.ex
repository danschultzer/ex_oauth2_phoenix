defmodule PhoenixOauth2Provider.AuthorizedApplicationView do
  use PhoenixOauth2Provider.View

  template "index.html",
  """
  <h1>Authorized Applications</h1>

  <table>
    <thead>
      <tr>
        <th>Application</th>
        <th>Created At</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
  <%%= for application <- @applications do %>
      <tr>
        <td><%%= application.name %></td>
        <td><%%= application.inserted_at %></td>

        <td class="text-right">
          <span><%%= link "Delete", to: Routes.oauth_authorized_application_path(@conn, :delete, application), method: :delete, data: [confirm: "Are you sure?"], class: "btn btn-danger btn-xs" %></span>
        </td>
      </tr>
  <%% end %>
    </tbody>
  </table>
  """
end

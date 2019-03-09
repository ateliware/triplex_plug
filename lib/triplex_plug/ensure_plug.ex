defmodule TriplexPlug.EnsurePlug do
  @moduledoc """
  This is a basic plug that ensure the tenant is loaded.

  To plug it on your router, you can use:

      plug Triplex.EnsurePlug,
        callback: &TenantHelper.callback/2
        failure_callback: &TenantHelper.failure_callback/2

  See `Triplex.EnsurePlugConfig` to check all the allowed `config` flags.
  """

  alias TriplexPlug.EnsurePlugConfig
  alias TriplexPlug.Plug

  @doc false
  def init(opts), do: struct(EnsurePlugConfig, opts)

  @doc false
  def call(conn, config), do: Plug.ensure_tenant(conn, config)
end

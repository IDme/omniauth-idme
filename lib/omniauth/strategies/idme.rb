require "omniauth/strategies/oauth2"

module OmniAuth
  module Strategies
    class IDme < OmniAuth::Strategies::OAuth2

      option :name,   "idme"
      option :scope,  "military"

      option :client_options, {
        :site               => "https://api.id.me",
        :authorize_url      => "https://api.id.me/oauth/authorize",
        :token_url          => "https://api.id.me/oauth/token"
      }

      option :authorize_options, [:scope, :display]

      uid { data["id"] }

      info do
        {
          :affiliation  => data["affiliation"],
          :verified     => data["verified"]
        }
      end

      extra do
        { :raw => data }
      end

      def data
        @data ||= access_token.get("/v2/#{options[:scope]}.json").parsed
      end

      def headers
        { "X-API-ORIGIN" => "OMNIAUTH-IDME" }
      end

    end
  end
end

OmniAuth.config.add_camelization "idme", "IDme"

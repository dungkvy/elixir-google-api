# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyCreateAuthUriRequest do
  @moduledoc """
  Request to get the IDP authentication URL.

  ## Attributes

  *   `appId` (*type:* `String.t`, *default:* `nil`) - The app ID of the mobile app, base64(CERT_SHA1):PACKAGE_NAME for Android, BUNDLE_ID for iOS.
  *   `authFlowType` (*type:* `String.t`, *default:* `nil`) - Explicitly specify the auth flow type. Currently only support "CODE_FLOW" type. The field is only used for Google provider.
  *   `clientId` (*type:* `String.t`, *default:* `nil`) - The relying party OAuth client ID.
  *   `context` (*type:* `String.t`, *default:* `nil`) - The opaque value used by the client to maintain context info between the authentication request and the IDP callback.
  *   `continueUri` (*type:* `String.t`, *default:* `nil`) - The URI to which the IDP redirects the user after the federated login flow.
  *   `customParameter` (*type:* `map()`, *default:* `nil`) - The query parameter that client can customize by themselves in auth url. The following parameters are reserved for server so that they cannot be customized by clients: client_id, response_type, scope, redirect_uri, state, oauth_token.
  *   `hostedDomain` (*type:* `String.t`, *default:* `nil`) - The hosted domain to restrict sign-in to accounts at that domain for Google Apps hosted accounts.
  *   `identifier` (*type:* `String.t`, *default:* `nil`) - The email or federated ID of the user.
  *   `oauthConsumerKey` (*type:* `String.t`, *default:* `nil`) - The developer's consumer key for OpenId OAuth Extension
  *   `oauthScope` (*type:* `String.t`, *default:* `nil`) - Additional oauth scopes, beyond the basid user profile, that the user would be prompted to grant
  *   `openidRealm` (*type:* `String.t`, *default:* `nil`) - Optional realm for OpenID protocol. The sub string "scheme://domain:port" of the param "continueUri" is used if this is not set.
  *   `otaApp` (*type:* `String.t`, *default:* `nil`) - The native app package for OTA installation.
  *   `providerId` (*type:* `String.t`, *default:* `nil`) - The IdP ID. For white listed IdPs it's a short domain name e.g. google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.
  *   `sessionId` (*type:* `String.t`, *default:* `nil`) - The session_id passed by client.
  *   `tenantId` (*type:* `String.t`, *default:* `nil`) - For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Firebear needs to know which Tenant to retrieve IDP configs from.
  *   `tenantProjectNumber` (*type:* `String.t`, *default:* `nil`) - Tenant project number to be used for idp discovery.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appId => String.t(),
          :authFlowType => String.t(),
          :clientId => String.t(),
          :context => String.t(),
          :continueUri => String.t(),
          :customParameter => map(),
          :hostedDomain => String.t(),
          :identifier => String.t(),
          :oauthConsumerKey => String.t(),
          :oauthScope => String.t(),
          :openidRealm => String.t(),
          :otaApp => String.t(),
          :providerId => String.t(),
          :sessionId => String.t(),
          :tenantId => String.t(),
          :tenantProjectNumber => String.t()
        }

  field(:appId)
  field(:authFlowType)
  field(:clientId)
  field(:context)
  field(:continueUri)
  field(:customParameter, type: :map)
  field(:hostedDomain)
  field(:identifier)
  field(:oauthConsumerKey)
  field(:oauthScope)
  field(:openidRealm)
  field(:otaApp)
  field(:providerId)
  field(:sessionId)
  field(:tenantId)
  field(:tenantProjectNumber)
end

defimpl Poison.Decoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyCreateAuthUriRequest do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyCreateAuthUriRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyCreateAuthUriRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

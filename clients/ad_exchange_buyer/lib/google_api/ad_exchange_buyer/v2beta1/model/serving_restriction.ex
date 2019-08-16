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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingRestriction do
  @moduledoc """
  Output only. A representation of the status of an ad in a
  specific context. A context here relates to where something ultimately serves
  (for example, a user or publisher geo, a platform, an HTTPS vs HTTP request,
  or the type of auction).

  ## Attributes

  *   `contexts` (*type:* `list(GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingContext.t)`, *default:* `nil`) - The contexts for the restriction.
  *   `disapproval` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.Disapproval.t`, *default:* `nil`) - Disapproval bound to this restriction.
      Only present if status=DISAPPROVED.
      Can be used to filter the response of the
      creatives.list
      method.
  *   `disapprovalReasons` (*type:* `list(GoogleApi.AdExchangeBuyer.V2beta1.Model.Disapproval.t)`, *default:* `nil`) - Any disapprovals bound to this restriction.
      Only present if status=DISAPPROVED.
      Can be used to filter the response of the
      creatives.list
      method.
      Deprecated; please use
      disapproval
      field instead.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the creative in this context (for example, it has been
      explicitly disapproved or is pending review).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contexts => list(GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingContext.t()),
          :disapproval => GoogleApi.AdExchangeBuyer.V2beta1.Model.Disapproval.t(),
          :disapprovalReasons => list(GoogleApi.AdExchangeBuyer.V2beta1.Model.Disapproval.t()),
          :status => String.t()
        }

  field(:contexts, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingContext, type: :list)
  field(:disapproval, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Disapproval)
  field(:disapprovalReasons, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Disapproval, type: :list)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingRestriction do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingRestriction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

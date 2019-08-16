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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.Correction do
  @moduledoc """
  Output only. Shows any corrections that were applied to this creative.

  ## Attributes

  *   `contexts` (*type:* `list(GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingContext.t)`, *default:* `nil`) - The contexts for the correction.
  *   `details` (*type:* `list(String.t)`, *default:* `nil`) - Additional details about what was corrected.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of correction that was applied to the creative.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contexts => list(GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingContext.t()),
          :details => list(String.t()),
          :type => String.t()
        }

  field(:contexts, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingContext, type: :list)
  field(:details, type: :list)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Correction do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.Correction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Correction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

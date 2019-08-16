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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.Price do
  @moduledoc """
  Represents a price and a pricing type for a product / deal.

  ## Attributes

  *   `amount` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.Money.t`, *default:* `nil`) - The actual price with currency specified.
  *   `pricingType` (*type:* `String.t`, *default:* `nil`) - The pricing type for the deal/product. (default: CPM)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amount => GoogleApi.AdExchangeBuyer.V2beta1.Model.Money.t(),
          :pricingType => String.t()
        }

  field(:amount, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Money)
  field(:pricingType)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Price do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.Price.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Price do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

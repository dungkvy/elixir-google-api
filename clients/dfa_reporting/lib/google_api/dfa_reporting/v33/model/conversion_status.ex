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

defmodule GoogleApi.DFAReporting.V33.Model.ConversionStatus do
  @moduledoc """
  The original conversion that was inserted or updated and whether there were any errors.

  ## Attributes

  *   `conversion` (*type:* `GoogleApi.DFAReporting.V33.Model.Conversion.t`, *default:* `nil`) - The original conversion that was inserted or updated.
  *   `errors` (*type:* `list(GoogleApi.DFAReporting.V33.Model.ConversionError.t)`, *default:* `nil`) - A list of errors related to this conversion.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#conversionStatus`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#conversionStatus".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversion => GoogleApi.DFAReporting.V33.Model.Conversion.t(),
          :errors => list(GoogleApi.DFAReporting.V33.Model.ConversionError.t()),
          :kind => String.t()
        }

  field(:conversion, as: GoogleApi.DFAReporting.V33.Model.Conversion)
  field(:errors, as: GoogleApi.DFAReporting.V33.Model.ConversionError, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.ConversionStatus do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.ConversionStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.ConversionStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

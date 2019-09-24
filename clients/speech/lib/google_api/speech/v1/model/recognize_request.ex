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

defmodule GoogleApi.Speech.V1.Model.RecognizeRequest do
  @moduledoc """
  The top-level message sent by the client for the `Recognize` method.

  ## Attributes

  *   `audio` (*type:* `GoogleApi.Speech.V1.Model.RecognitionAudio.t`, *default:* `nil`) - Required. The audio data to be recognized.
  *   `config` (*type:* `GoogleApi.Speech.V1.Model.RecognitionConfig.t`, *default:* `nil`) - Required. Provides information to the recognizer that specifies how to
      process the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audio => GoogleApi.Speech.V1.Model.RecognitionAudio.t(),
          :config => GoogleApi.Speech.V1.Model.RecognitionConfig.t()
        }

  field(:audio, as: GoogleApi.Speech.V1.Model.RecognitionAudio)
  field(:config, as: GoogleApi.Speech.V1.Model.RecognitionConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.RecognizeRequest do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.RecognizeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.RecognizeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

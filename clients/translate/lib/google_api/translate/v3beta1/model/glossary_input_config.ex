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

defmodule GoogleApi.Translate.V3beta1.Model.GlossaryInputConfig do
  @moduledoc """
  Input configuration for glossaries.

  ## Attributes

  *   `gcsSource` (*type:* `GoogleApi.Translate.V3beta1.Model.GcsSource.t`, *default:* `nil`) - Required. Google Cloud Storage location of glossary data.
      File format is determined based on the filename extension. API returns
      [google.rpc.Code.INVALID_ARGUMENT] for unsupported URI-s and file
      formats. Wildcards are not allowed. This must be a single file in one of
      the following formats:

      For unidirectional glossaries:

      - TSV/CSV (`.tsv`/`.csv`): 2 column file, tab- or comma-separated.
        The first column is source text. The second column is target text.
        The file must not contain headers. That is, the first row is data, not
        column names.

      - TMX (`.tmx`): TMX file with parallel data defining source/target term
      pairs.

      For equivalent term sets glossaries:

      - CSV (`.csv`): Multi-column CSV file defining equivalent glossary terms
        in multiple languages. The format is defined for Google Translation
        Toolkit and documented in [Use a
        glossary](https://support.google.com/translatortoolkit/answer/6306379?hl=en).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsSource => GoogleApi.Translate.V3beta1.Model.GcsSource.t()
        }

  field(:gcsSource, as: GoogleApi.Translate.V3beta1.Model.GcsSource)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V3beta1.Model.GlossaryInputConfig do
  def decode(value, options) do
    GoogleApi.Translate.V3beta1.Model.GlossaryInputConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V3beta1.Model.GlossaryInputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

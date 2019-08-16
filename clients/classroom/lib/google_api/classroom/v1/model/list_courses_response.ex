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

defmodule GoogleApi.Classroom.V1.Model.ListCoursesResponse do
  @moduledoc """
  Response when listing courses.

  ## Attributes

  *   `courses` (*type:* `list(GoogleApi.Classroom.V1.Model.Course.t)`, *default:* `nil`) - Courses that match the list request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token identifying the next page of results to return. If empty, no further
      results are available.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :courses => list(GoogleApi.Classroom.V1.Model.Course.t()),
          :nextPageToken => String.t()
        }

  field(:courses, as: GoogleApi.Classroom.V1.Model.Course, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.ListCoursesResponse do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.ListCoursesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.ListCoursesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

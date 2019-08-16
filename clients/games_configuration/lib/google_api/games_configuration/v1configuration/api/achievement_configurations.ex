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

defmodule GoogleApi.GamesConfiguration.V1configuration.Api.AchievementConfigurations do
  @moduledoc """
  API calls for all endpoints tagged `AchievementConfigurations`.
  """

  alias GoogleApi.GamesConfiguration.V1configuration.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Delete the achievement configuration with the given ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.GamesConfiguration.V1configuration.Connection.t`) - Connection to server
  *   `achievement_id` (*type:* `String.t`) - The ID of the achievement used by this method.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_configuration_achievement_configurations_delete(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def games_configuration_achievement_configurations_delete(
        connection,
        achievement_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/games/v1configuration/achievements/{achievementId}", %{
        "achievementId" => URI.encode(achievement_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves the metadata of the achievement configuration with the given ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.GamesConfiguration.V1configuration.Connection.t`) - Connection to server
  *   `achievement_id` (*type:* `String.t`) - The ID of the achievement used by this method.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_configuration_achievement_configurations_get(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration.t()}
          | {:error, Tesla.Env.t()}
  def games_configuration_achievement_configurations_get(
        connection,
        achievement_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/games/v1configuration/achievements/{achievementId}", %{
        "achievementId" => URI.encode(achievement_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration{}]
    )
  end

  @doc """
  Insert a new achievement configuration in this application.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.GamesConfiguration.V1configuration.Connection.t`) - Connection to server
  *   `application_id` (*type:* `String.t`) - The application ID from the Google Play developer console.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_configuration_achievement_configurations_insert(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration.t()}
          | {:error, Tesla.Env.t()}
  def games_configuration_achievement_configurations_insert(
        connection,
        application_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/games/v1configuration/applications/{applicationId}/achievements", %{
        "applicationId" => URI.encode(application_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration{}]
    )
  end

  @doc """
  Returns a list of the achievement configurations in this application.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.GamesConfiguration.V1configuration.Connection.t`) - Connection to server
  *   `application_id` (*type:* `String.t`) - The application ID from the Google Play developer console.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of resource configurations to return in the response, used for paging. For any response, the actual number of resources returned may be less than the specified maxResults.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfigurationListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_configuration_achievement_configurations_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfigurationListResponse.t()}
          | {:error, Tesla.Env.t()}
  def games_configuration_achievement_configurations_list(
        connection,
        application_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/games/v1configuration/applications/{applicationId}/achievements", %{
        "applicationId" => URI.encode(application_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfigurationListResponse{}
        ]
    )
  end

  @doc """
  Update the metadata of the achievement configuration with the given ID. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.GamesConfiguration.V1configuration.Connection.t`) - Connection to server
  *   `achievement_id` (*type:* `String.t`) - The ID of the achievement used by this method.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_configuration_achievement_configurations_patch(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration.t()}
          | {:error, Tesla.Env.t()}
  def games_configuration_achievement_configurations_patch(
        connection,
        achievement_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/games/v1configuration/achievements/{achievementId}", %{
        "achievementId" => URI.encode(achievement_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration{}]
    )
  end

  @doc """
  Update the metadata of the achievement configuration with the given ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.GamesConfiguration.V1configuration.Connection.t`) - Connection to server
  *   `achievement_id` (*type:* `String.t`) - The ID of the achievement used by this method.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_configuration_achievement_configurations_update(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration.t()}
          | {:error, Tesla.Env.t()}
  def games_configuration_achievement_configurations_update(
        connection,
        achievement_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/games/v1configuration/achievements/{achievementId}", %{
        "achievementId" => URI.encode(achievement_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration{}]
    )
  end
end

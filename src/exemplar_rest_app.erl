%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the exemplar_rest application.

-module(exemplar_rest_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for exemplar_rest.
start(_Type, _StartArgs) ->
    exemplar_rest_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for exemplar_rest.
stop(_State) ->
    ok.

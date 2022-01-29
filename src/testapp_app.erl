%%%-------------------------------------------------------------------
%% @doc testapp public API
%% @end
%%%-------------------------------------------------------------------

-module(testapp_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    testapp_sup:start_link().

stop(_State) ->
    ok.

%% internal functions

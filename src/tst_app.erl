%%%-------------------------------------------------------------------
%% @doc tst public API
%% @end
%%%-------------------------------------------------------------------

-module(tst_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_Type, _Args) ->
    Dispatch = cowboy_router:compile([
        {'_', [{"/", hello_handler, []}]}
    ]),
    {ok, _} = cowboy:start_clear(my_http_listener,
        [{port, 8080}],
        #{env => #{dispatch => Dispatch}}
    ),
    tst_sup:start_link().


stop(_State) ->
    ok.

%% internal functions

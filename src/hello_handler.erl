%%%-------------------------------------------------------------------
%%% @author root
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. Sep 2020 11:12 AM
%%%-------------------------------------------------------------------
-module(hello_handler).
-author("root").

%% API
-export([init/2]).



init(Req0, State) ->
  {ok, Body} =
    httpc:request(get, {"http://www.erlang.org", []}, [], [{sync, false}]),
  Req = cowboy_req:reply(200,

    #{<<"content-type">> => <<"text/plain">>},
    <<Body>>,
    Req0),
  {ok, Req, State}.

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
  inets:start(),
  ssl:start(),
  Url = "https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5",
  {ok, {{Version, 200, ReasonPhrase}, Headers, Body}} = httpc:request(get, {Url,[]}, [], []), io:format("~s", [Body]),


  X2 = jsx:decode(<<Body>>, []),
  X1 = jsx:is_json(X2),

  if
    X1 == true -> X = "true" ;
    true ->
      X = "false"
  end,

  Req = cowboy_req:reply(200,
    #{<<"content-type">> => <<"text/plain">>},
    X,
    Req0),
  {ok, Req, State}.

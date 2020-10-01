tst
=====

An OTP application

Build
-----

    $ rebar3 compile
[{"ccy":"USD","base_ccy":"UAH","buy":"28.05000","sale":"28.45000"},{"ccy":"EUR","base_ccy":"UAH","buy":"32.75000","sale":"33.35000"},{"ccy":"RUR","base_ccy":"UAH","buy":"sale":"0.38000"},{"ccy":"BTC","base_ccy":"USD","buy":"10332.2434","sale":"11419.8480"}]2020-10-01T09:33:26.138698-05:00 error: crasher: initial call: cowboy_stream_h:reess/3, pid: <0.206.0>, registered_name: [], error: {badarg,[{hello_handler,init,2,[{file,"/root/tst/src/hello_handler.erl"},{line,25}]},{cowboy_handler,execute,2,[{file,/_build/default/lib/cowboy/src/cowboy_handler.erl"},{line,37}]},{cowboy_stream_h,execute,3,[{file,"/root/tst/_build/default/lib/cowboy/src/cowboy_stream_h.erl"},{line,30oy_stream_h,request_process,3,[{file,"/root/tst/_build/default/lib/cowboy/src/cowboy_stream_h.erl"},{line,295}]},{proc_lib,init_p_do_apply,3,[{file,"proc_lib.erl"},{line ancestors: [<0.205.0>,<0.191.0>,<0.190.0>,ranch_sup,<0.184.0>], message_queue_len: 0, messages: [], links: [<0.205.0>], dictionary: [], trap_exit: false, status: runninze: 2586, stack_size: 28, reductions: 3390; neighbours:
2020-10-01T09:33:26.144385-05:00 error: Ranch listener my_http_listener, connection process <0.205.0>, stream 1 had its request process <0.206.0> exit with reason badargtrace [{hello_handler,init,2,[{file,"/root/tst/src/hello_handler.erl"},{line,25}]},{cowboy_handler,execute,2,[{file,"/root/tst/_build/default/lib/cowboy/src/cowboy_handlline,37}]},{cowboy_stream_h,execute,3,[{file,"/root/tst/_build/default/lib/cowboy/src/cowboy_stream_h.erl"},{line,304}]},{cowboy_stream_h,request_process,3,[{file,"/rootd/default/lib/cowboy/src/cowboy_stream_h.erl"},{line,295}]},{proc_lib,init_p_do_apply,3,[{file,"proc_lib.erl"},{line,226}]}]

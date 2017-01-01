remainder(X,[X|Ds],Ds).    
remainder(X,[_|Ds],Rs) :- remainder(X,Ds,Rs).



%Checks that `X` comes before `Y`
%in the list `Ds`b
before(X,Y,Ds) :-
    remainder(X,Ds,Rs),
    member(Y,Rs).



 members([],_).        
members([X|Xs],Ds) :-
    member(X,Ds),
    members(Xs,Ds).   

    puzzle :-
    Days = [[tuesday,_,_],[wednesday,_,_],[thursday,_,_],[friday,_,_]], 
     before([_,mr_klien,_],[_,_,balloon],Days),
     before([_,_,frisbee],[_,mr_klien,_],Days),
    
     (member([friday,ms_barnum,_],Days);
        member([friday,_,clothesline],Days);
        member([friday,ms_barnum,clothesline],Days)),
    members([[_,mr_klien,_],[_,ms_barnum,_],[_,ms_green,_],[_,mr_niven,_]],Days),
    
    members([[_,_,balloon],[_,_,frisbee],[_,_,clothesline],[_,_,water_tower]],Days),
    
member([_,NOT_ms_green,frisbee],Days), NOT_ms_green \= ms_green,
member([tuesday,NOT_mr_niven,_],Days), NOT_mr_niven \= mr_niven,
member([_,NOT_mr_klien,water_tower],Days), NOT_mr_klien \= mr_klien,
write(Days),
    nl.

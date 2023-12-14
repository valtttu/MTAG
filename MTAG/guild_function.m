function [dm, de, di, eline] = guild_function(guild)
    dm = 0; de = 0; di = 0; eline = '';
    if(contains(guild, 'FK'))
        disp('Good old Kiltis! You see many friends and enjoy coffee/tea/hot chocolate...')
        games = ceil(rand()*3);
        if(games == 1)
            disp('You find yourself playing with the Nintendo of the guild room and it gets late... :D')
            de = de - 10;
            snack = ceil(rand()*3);
            if(snack == 1)
                disp('You buy some snacks from the cabinet of Kiltis.')
                dm = -5;
            else
                disp('Now it is really late and you start feeling the hunger kicking in.')
                de = de - 10;
            end
        end

    elseif(contains(guild, 'Inkubio'))
        disp('Inkubio guild room... a bold move to enter this one.')
        disp('A guild member comes to verify your guild...')
        name = input("     the member asks you the name of the circuit cow in Inkubio's logo? [type the name] ", "s");
        if(contains(lower(name), 'maikki'))
            disp('"Oh, my dear Inkubioan" -says the member. You passed the test.')
        else
            disp('"Oh, well well well, you definitely do not belong here!"')
            disp('"Flagman! We have a guest for you." -says the member.')
            disp('Flagman comes with his Inkubio flag and throws you out violently....')
            de = -20;
        end
    end
end
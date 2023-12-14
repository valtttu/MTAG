function [dm, de, di, eline] = outdoor_function(n_visits)
    season = ceil(rand()*4);
    dm = 0; de = 0; di = 0; eline = '';

    if(season == 1)
        cond = ceil(rand()*3);
        if(cond == 1)
            disp('It is nice winter weather outside and you enjoy the sun!')
            de = 10;
        elseif(cond == 2)
            disp('It is gray winter weather outside, but you still enjoy fresh air.')
            de = 5;
        else
            disp('It is winter and raining räntä, your shoes get wet :/.')
            de = -7;
        end
    elseif(season == 2)
        wappu = ceil(rand()*3);
        if(wappu == 3)
            disp('It is WAPPU and you go to all the events with your friends! Adn you also buy a lot of overall badges.')
            de = 50;
            dm = -20;
        else
            disp('It is spring and starting to feel like the winter is finally giving up. You enjoy the weather.')
            de = 5;
        end
    elseif(season == 3)
        mosquitoes = ceil(rand()*5);
        disp('It is summer, you have a picnic with you friends.')
        de = 10;
        if(mosquitoes > 3)
            disp('BUT there is also tons of musquitoes outside and you get really bitten...')
            de = de - mosquitoes*5;
        end
   
    else
        if(n_visits < 2)
            disp('It is autumn and a new semester, you meet a lot of new people and learn new things!')
            de = 20;
            di = 5;
        else
            disp('It is autumn and you go to wonder the colors of ruska near the beach.')
            de = 5;
        end

    end

end
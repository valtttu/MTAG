function [dm, di, de, eline] = study_function(n_visits)
    dm = 0; de = 0; di = 0; eline = '';
    t = max(0, input('How many hours are you going to work? [in hours] '));
    eff = min(100, max(0, input('Estimate your efficiency? [0-100] ')));
    
    str1 = '';
    str2 = '';
    if(t < 1)
        str1 = 'Oh this is a short one ';
    elseif(t < 3)
        str1 = 'Nice, you really put some hours in ';
    elseif(t < 6)
        str1 = 'Wow, the working time is quiiite huge... ';
        if(eff > 50)
            str2 = 'Are you sure about your efficiency estimate though?';
        end
    else
        str1 = 'Wait a sec? Are you going for a hub all-nighter? ';
        if(eff > 50)
            str2 = 'You really overshoot the efficiency... Bonne nuit xd';
        end
    end

    if(eff < 10)
        str2 = 'That is good that you are realostic about the efficiency xd';
    end

    de = -eff/100*max(8,t)*2;
    di = eff/100*5*t/12;

    if(n_visits > 5 && n_visits < 10)
        disp('Oh you are coming here often!');
    elseif(n_visits == 10)
        disp('In the hub again, you start to become a hub local!')
    end

    disp([str1, str2]);
end
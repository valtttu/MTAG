function [dm, de, di, eline] = solve_mystery(int, en, loc_history, keys)
    de = -15; dm = 0; di = 0; eline = '';

    if(en < 15)
        disp('You need more energy for solving a mystery...')
        pause(2)
        disp('    Go eat and try again later!')
        return
    end

    if(int < 10)
        disp('You need a bit more intelligence for solving a mystery...')
        pause(2)
        disp('    Come back smarter next time!')
        return
    end

    disp('Mistery solving is hard work and requires a lot of effort.')
    pause(2)
    disp("    Let's see see what you have got...")

    visits = unique(loc_history);
    n = length(keys);
    m = min(ceil(int/100*n), n);
    names = string();
    for i = 1:m
        names(i) = sprintf('./Figs/Pcs/img_%03.f.png', keys(i,2));
    end

    if(length(visits) > 10 && length(visits) < 15)
        disp('    Oh, you have explored the places quite well!')
        disp('         Keep up the same track!')
        disp(' ')
        pause(2)
        disp('    Your current findings are:')
        pause(2)
        f = figure();
        montage(names, "Size",[sqrt(n)/2, n/sqrt(n)*2]);
    elseif(length(visits) >= 15 && m ~= n)
        disp('    You are getting closer to the solution')
        disp('         Still a bit work to do!')
        disp(' ')
        pause(2)
        disp('    Your current findings are:')
        pause(2)
        f = figure();
        montage(names, "Size",[sqrt(n), sqrt(n)]);
    elseif(length(visits) > 15 && m == n)
        disp('    Congratulations! You have solved the mystery.')
        pause(2)
        f = figure();
        montage(names, "Size",[sqrt(n), sqrt(n)]);
        eline = 'running = false; won = true;';
    else
        disp('    Your current findings are:')
        pause(2)
        f = figure();
        montage(names);
    end
    pause(5)
    disp('[press any key to continue]');
    pause();
    close(f)
    
    
    

    
end
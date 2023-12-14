function running = print_update(dm, de, di, money, energy, int)
    
    if(dm ~= 0)
        if(dm > 0)
            fprintf('During this turn you gained %0.1f euros.\n', dm);
        else
            fprintf('During this turn you lost %0.1f euros.\n', -dm);
        end
    end

    if(de ~= 0)
        if(de > 0)
            fprintf('During this turn you gained %0.1f energy points.\n', de);
        else
            fprintf('During this turn you lost %0.1f energy points.\n', -de);
        end
    end

    if(di ~= 0)
        if(di > 0)
            fprintf('During this turn you gained %0.1f intelligence points.\n', di);
        else
            fprintf('During this turn you lost %0.1f intelligence points.\n', -di);
        end
    end

    if(money < 0)
        fprintf('\nYour money situation is looking bad at %0.1f... GAME OVER\n', money);
        running = false;
    elseif(energy < 0)
        fprintf('\nYour energy situation is looking bad at %0.1f... GAME OVER\n', energy);
        running = false;
    else
        fprintf('\nYour current status is:\nMoney: %0.1f\nEnergy: %0.1f\nIntelligence: %0.1f/100\n', money, energy, int);
        running = true;
    end

end
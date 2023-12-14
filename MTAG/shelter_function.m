function [dm, de, di, eline] = shelter_function(n_visits)
    de = 0; dm = 0; di = 0; eline = '';

    if(n_visits == 0)
        disp('The bomb shelter...'); 
        pause(4);
        disp('"You delved too greedily and too deep.'); 
        pause(4);
        disp(' You don not know what you awoke in the darkness of the Undergrad...');
        pause(6);
        disp('        shadow and flame"');
        pause(4);
    
        f = figure();
        imshow('Figs/balrog.png')
    
        pause(4);

        disp(' ');
        disp('This is the cost of being too curious... [press any key to continue]');
        commandwindow
        pause();
        close(f);
        de = -50;
    else
        disp('The door is double locked...')
        disp('This place shall not be visited for a good reason.')
    end
end
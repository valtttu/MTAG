%% This is the main loop for the text adventure game

close all
clear all

money = 10;
energy = 60;
int = 0;
won = false;
status = 'student';
loc_history = [];
data = load('places.mat');
places = data.places;

keys = readmatrix("Figs\keys.txt");

% Tell the intro of the game
running = introduction();
if(~running)
    return
end

% Show the map and available locations
map = figure();
imshow('Figs/map_with_features.png')
map = create_map(map, places, 'r', 0.1);


% The main event loop
while(running)
    
    disp('Click where you want to go on the map');
    disp(' ');
    [x,y] = ginput(1);
    loc = get_location(places, x, y);
    commandwindow;
    if(loc == -1)
        disp('There is nothing there.');
    else
        disp(['You are in ' places(loc).name ':'])
        disp(places(loc).description);
        res = input(['Do you wish to go into ' places(loc).name '? [y/n] '],'s');
        if(contains('y', res))
            disp(' ')
            n_visits = sum(loc_history == loc);
            [dm, de, di, eline] = eval(places(loc).action);
            money = money + dm;
            energy = energy + de;
            int = min(int + di, 100);
            loc_history(end+1) = loc;
            eval(eline);
            disp(' ')
            if(running)
                running = print_update(dm, de, di, money, energy, int);
            end
        end
    end

    disp('-----------------------------------------------------------------');
    pause(3);


end

outro(won);

close(map)
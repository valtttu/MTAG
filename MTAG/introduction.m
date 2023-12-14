function start = introduction()

    start = false;
    disp('Welcome to MATLAB Text Adventure Game or MTAG!'); 
    pause(3);
    disp('"Long ago in a far distant country called Swampland or Suomaa,'); 
    pause(3);
    disp(' there was a university called A!. They used some gibberish for communication');
    pause(3);
    disp(' and nobody really understood them. That is why it disappeared..."');
    disp(' ')
    pause(4);
    disp('Today your mission, if you choose to accept it, is to find out the mistery')
    disp('in an old intercative map found from A! university remainings.')
    pause(3);
    res = input('Do you accept the challenge? [y/n] ','s');
    disp(' ')

    if(contains(res, 'y'))
        disp('Great!')
        disp(' ')
        pause(3);
        disp('Now we will actually send you to what used to be the A! university as the mistery')
        disp('cannot be solved otherwise...sorry, we left this unsaid in the beginning.')
        pause(8);
        disp('       ...AND there is no coming back before you have solved this:')
        pause(4);

        f = figure();
        imshow('Figs/problem.png')
        pause(4);
        close(f);

        commandwindow

        disp(' ');
        disp('Good luck for the mission!');
        disp(' ');
        pause(2);
        start = true;


        disp(' ');
        disp('After many days of traveling you reach the A! university and');
        disp('the place seems so lively that you are afraid that people notice,');
        disp('if you just wander around randomly seeking for clues.')
        pause(10);
        disp(' ')
        disp('Thus, you decide to blend in to the crowd by pretending you are a student.')
        disp('and you are very lost, but luckily there is the map...')
        pause(7);
        disp(' ')
        
    else
        start = false;
        disp('As you wish...')

    end

end
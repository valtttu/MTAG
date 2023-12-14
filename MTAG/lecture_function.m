function [dm, de, di, eline] = lecture_function(n_seats)
    dm = 0; de = 0; di = 0; eline = '';
    if(n_seats <= 200)
        courses = {'Soft condensed matter physics', 'Solid-state physics', 'Finite-element method', 'Statistical mechanics'};
        effect = {[-5, 7], [-7, 6], [-5, 6], [-4, 2]};
        ind = ceil(rand()*length(courses));
        if(rem(ind,2) == 0)
            disp(['Today the lecture is about ' courses{ind} ' and it is quite nice!']);
        else 
            disp(['Today the lecture is about ' courses{ind} ' and ']);
            disp('you struggle with the english of the lecturer...');
        end
        de = effect{ind}(1);
        di = effect{ind}(2);
    else
        courses = {'Programming I - Intorduction to C++', 'Probability and statistics', 'Engineering history forum'};
        effect = {[-8, 6], [-4, 2], [-3, 1]};
        ind = ceil(rand()*length(courses));
        disp(['Mass lecture is a mass lecture... today it is about ' courses{ind}]);
        de = effect{ind}(1);
        di = effect{ind}(2);
    end
end
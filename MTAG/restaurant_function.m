function [dm, de, di, eline] = restaurant_function(status, rating)
    dm = 0; de = 0; di = 0; eline = '';
    if(contains(status, 'staff'))
        price = 7.70;
    else
        price = 2.95;
    end

    if(rating == -1)
        spagu = ceil(rand()*3);
        if(spagu == 3)
            disp('It is Wednesday and Täffä spaghetti!');
            de = 7;
        else
            disp('Good old Täffä always works.')
            de = 5;
        end
    elseif(rating == 10)
        disp('The soup today is delicious! (as always)');
        de = 9;
    elseif(rating < 5)
        disp('The food today did not really make your day...');
        de = 3;
    else
        disp('The food was surprisingly good and you feel good!');
        de = 6;
    end

    dm = -price;



end
function [dm, de, di, eline] = job_function(status, place)
    dm = 0; de = 0; di = 0; eline = '';
    phd_probs = [20, 30];
    if(contains(place, 'Math'))
        phd = ceil(rand()*phd_probs(1));
        if(phd == 1 && ~contains(status, 'staff'))
            disp('It is your lucky day! The professor gives you a PhD position...')
            disp('Welcome to be a PhD slave in the math department :D')
            eline = "status = 'staff';";
            de = -5;
        else
            if(~contains(status, 'staff'))
                disp('Being a math TA is an easy way to earn your lunch money...')
                de = -2;
                dm = 15;
            else
                disp('Oh yet another workday full of proofs and coding MATLAB...')
                de = -5;
                dm = 20;
            end
        end
    elseif(contains(place, 'Physics'))
        phd = ceil(rand()*phd_probs(2));
        if(phd == 1 && ~contains(status, 'staff'))
            disp('It is your lucky day! The professor gives you a PhD position...')
            disp('Welcome to be a PhD slave in the physics department :D')
            eline = "status = 'staff';";
            de = -5;
        else
            ind = ceil(rand()*2);
            if(~contains(status, 'staff'))
                if(ind == 1)
                    disp('Being a physics TA is is a honrable duty, the questions by the students can be hard...')
                else
                    disp('Part-time work as a RA in the lab, a nice way to get money and experience!')
                end
                de = -2;
                dm = 15;
            else
                if(ind == 1)
                    disp('The lab is not letting you go easily today, the experiments are tricky...')
                    de = -8;
                    dm = 20;
                else
                    disp('The day at the lab is going surprisignly well! The sample behaves :D')
                    de = -3;
                    dm = 20;
                end
            end
        end
    end

end
function ClearWorkspace
    try
        p = currentProject;
        
        % Make sure we are in the working directory before proceeding.
        workingDir = fullfile(p.RootFolder, 'Working');
        cd(workingDir);
    catch ME
        if strcmp(ME.identifier, 'MATLAB:project:api:NoProjectCurrentlyLoaded')
            error('Workshop:ClearWorkspace:NoProjectLoaded', 'Workshop project must be loaded in MATLAB to use this script.');
        elseif strcmp(ME.identifier, 'MATLAB:cd:NonExistentFolder')
            error('Workshop:ClearWorkspace:NoProjectLoaded', 'Unable to find workshop project''s working directory.');
        else
            warning('Workshop:ClearWorkspace:UnableToClear', 'Unable to clear workspace due to error:');
            throwAsCaller(ME);
        end
    end

    % Clear cache data
    bdclose all
    slreq.clear()
    systemcomposer.profile.Profile.closeAll
    Simulink.data.dictionary.closeAll('-discard')
    [status, message, messageid] = rmdir('slprj', 's'); %#ok<ASGLU>

    % Last change to quit before wiping directory.
    if isequal(workingDir, pwd)
        delete *.*
    else
        error('Workshop:ClearWorkspace:NotInWorkingDir', 'Not in project working directory');
    end

    %evalin('base', 'clear');
    evalin('base', 'clc');

end
function ImportSystemRequirements(WorkingDir)
    WorkingDir = char(WorkingDir);

    cd(fullfile(WorkingDir,'.'));
    
    ImportFilePath = fullfile(WorkingDir, '2_SystemRequirements.xlsx');

    ImportOptions.ReqSet =fullfile(WorkingDir,'2_SystemRequirements.slreqx');

    ImportOptions.AsReference = false;

    ImportOptions.RichText = false;

                               % Custom Attributes Only
    ImportOptions.attributes = {'Category', ...
                                'Derived', ...
                                'Applicable Spec', ...
                                'Design Assurance Level', ...
                                'Safety Related', ...
                                'Verification Method' ...
                                };

    ImportOptions.columns = [1 9];    

    ImportOptions.rows = [2 66];

    ImportOptions.idColumn = 2;

    ImportOptions.summaryColumn = 3;

    ImportOptions.descriptionColumn = 4;

                            % Custom Attributes Only
    ImportOptions.attributeColumn = [1 5 6 7 8 9];    

    slreq.import(ImportFilePath, 'options', ImportOptions);

    hDoc = rmidotnet.MSExcel.activate(fullfile(WorkingDir,'2_SystemRequirements.xlsx'));

    hDoc.Close();

    hApp = rmidotnet.MSExcel.application();

    hApp.Quit();


end
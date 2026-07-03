function MakeFunctionalProfile(WorkingDir)
    errorFlag = false;
    try
        model = systemcomposer.loadModel(WorkingDir + "FunctionalArchitecture.slx");
    catch
        errorFlag = true;
        error('\n  %s\n\n    Couldn''t find the FunctionalArchitecture model.\n    Make sure you saved your model then try to run this script again.%s\n\n', 'Error using systemcomposer.loadModel.');
    end
    
    if errorFlag
        return;
    end
    
    profile = systemcomposer.profile.Profile.createProfile('FunctionalProfile');
    
    BaseStereotype = profile.addStereotype('ElectricalSignal', 'AppliesTo', 'Port');
    BaseStereotype.addProperty('Vmax','Type','double', 'Unit', 'Volts');
    BaseStereotype.addProperty('Vmin','Type','double', 'Unit', 'Volts');
    
    DigitalStereotype = profile.addStereotype('Digital', ...
                                              'Parent', BaseStereotype, ...
                                              'ConnectorLineColor', uint32([119, 172, 48]));
                                          
    DigitalStereotype.addProperty('Resolution','Type','int32', 'Unit', 'Bits');

    AnalogStereotype = profile.addStereotype('Analog', ...
                                             'Parent', BaseStereotype, ...
                                             'ConnectorLineColor', uint32([0, 70, 255]));
                                         
    DiscreteStereotype = profile.addStereotype('Discrete', ...
                                               'Parent', BaseStereotype, ...
                                               'ConnectorLineColor', uint32([162, 20, 47]));
    
    model.applyProfile('FunctionalProfile');
    
    profile.save(char(WorkingDir));
    
    systemcomposer.profile.editor(profile);
end
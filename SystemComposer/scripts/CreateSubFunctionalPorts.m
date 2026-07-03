function CreateSubFunctionalPorts()
    Components(1) = FindComponent(bdroot, "Measure Position");
    Components(2) = FindComponent(bdroot, "Measure Attitude");
    
    addPort(Components(1).Architecture, {'TakeMeasurement'   , 'QuadcopterPosition'}, ...
                                        {'in'                , 'out'               });
    addPort(Components(2).Architecture, {'TakeMeasurement'   , 'QuadcopterAttitude'}, ...
                                        {'in'                , 'out'               });
end
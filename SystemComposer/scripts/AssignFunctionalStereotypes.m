function AssignFunctionalStereotypes()
    ComponentNames = ["Identify Quadcopter Position", ...
                      "Measure Position", ...
                      "Measure Attitude", ...
                      "Identify Quadcopter Position" ...
                     ]; 
                 
    Components = systemcomposer.arch.Component.empty([0 numel(ComponentNames)]);
    
    idx = 1;
    for componentName = ComponentNames
        component = FindComponent(bdroot, componentName);
        Components{idx} = component.Architecture;
        idx = idx + 1;
    end
                        % Port Name           , Stereotype
    PortAssignments = { ["TakeMeasurement"    , "FunctionalProfile.Discrete"]
                        ["QuadcopterPosition" , "FunctionalProfile.Digital"]
                        ["QuadcopterAttitude" , "FunctionalProfile.Digital"]
                        ["QuadcopterTelemetry", "FunctionalProfile.Digital"]
                      };
    
    idx = 1;
    for assignment = PortAssignments'
        port = Components{idx}.getPort(assignment{1}(1));
        port.applyStereotype(assignment{1}(2));
        idx = idx + 1;
    end
end
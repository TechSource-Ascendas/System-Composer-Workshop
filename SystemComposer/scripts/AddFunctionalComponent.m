function AddFunctionalComponent(ArchitectureName, ComponentName)
    FunctionalArchitectureModel = systemcomposer.loadModel(bdroot);
    FunctionalArchitecture = FunctionalArchitectureModel.lookup('Path',ArchitectureName);
    if isa(FunctionalArchitecture, 'systemcomposer.arch.Architecture')
        addComponent(FunctionalArchitecture, ComponentName);
    else
        addComponent(FunctionalArchitecture.Architecture, ComponentName);
    end
    
    Simulink.BlockDiagram.arrangeSystem(bdroot);
end
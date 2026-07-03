function component = FindComponent(ModelName, ComponentName)
    % Built-In component = model.lookup('Path', 'model/path/to/component')
    % can be used instead of this function.

    FunctionalArchitectureModel = systemcomposer.loadModel(ModelName);
    
    FunctionalArchitecture = get(FunctionalArchitectureModel, 'Architecture');
    
    component = FindComponentInArchitecture(FunctionalArchitecture, ComponentName);
    
    function component = FindComponentInArchitecture(Architecture, ComponentName)
        component = systemcomposer.arch.Component.empty();
        
        for searchComponent = Architecture.Components
            if isequal(searchComponent.Name, ComponentName)
                component = searchComponent;
                return;
            end
            
            if numel(searchComponent.Architecture.Components) > 0
                component = FindComponentInArchitecture(searchComponent.Architecture, ComponentName);
                if isequal(searchComponent.Name, ComponentName)
                    component = searchComponent;
                    return;
                end
            end
            
        end
    end

end
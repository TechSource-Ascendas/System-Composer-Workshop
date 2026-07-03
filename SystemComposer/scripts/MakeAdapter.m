function Adapter = MakeAdapter()
    % This is a workaround to create an adapter since the API isn't
    % available as of R2021a.
    model = systemcomposer.loadModel(bdroot);

    parent = model.lookup('Path', 'FunctionalArchitecture/Identify Quadcopter Position');
    parentArch = get(parent, 'Architecture');

    % This is an undocumented function and is subject to change without
    % notice. 
    Adapter = systemcomposer.internal.adapter.create(parentArch, 'Adapter');
    AdapterArch = get(Adapter, 'Architecture');

    addPort(Adapter.Architecture, {'QuadcopterPosition', 'QuadcopterTelemetry'}, {'in','out'});

    inport = getPort(AdapterArch, 'In');
    outport =  getPort(AdapterArch, 'Out');

    destroy(inport);
    destroy(outport);

    % This is an undocumented function and is subject to change without
    % notice. 
    systemcomposer.internal.adapter.setMappings(Adapter.SimulinkHandle, {'QuadcopterPosition'}, {'QuadcopterTelemetry'});

    addPort(Adapter.Architecture, {'QuadcopterAttitude'}, {'in'});
end
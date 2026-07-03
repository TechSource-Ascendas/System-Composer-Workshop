function MapAdapter(Adapter)
    % This is a workaround since there are no adapter APIs available in 21a.
    
    % This is an undocumented function and is subject to change without
    % notice.
    systemcomposer.internal.adapter.setMappings(Adapter.SimulinkHandle, {'QuadcopterPosition', 'QuadcopterAttitude'}, {'QuadcopterTelemetry.QCPosition', 'QuadcopterTelemetry.QCAttitude'});
end
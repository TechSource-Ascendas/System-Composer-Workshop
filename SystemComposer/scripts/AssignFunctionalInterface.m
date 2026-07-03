function AssignFunctionalInterface()
    model = systemcomposer.loadModel(bdroot);
    
    QCPositionInterface = getInterface(model.InterfaceDictionary, 'QCPosition');
    QCAttitudeInterface = getInterface(model.InterfaceDictionary, 'QCAttitude');
    QCTelemetryInterface = getInterface(model.InterfaceDictionary, 'QCTelemetry');
    
    MeasurePositionComponent = model.lookup('Path', 'FunctionalArchitecture/Identify Quadcopter Position/Measure Position');
    MeasureAttitudeComponent = model.lookup('Path', 'FunctionalArchitecture/Identify Quadcopter Position/Measure Attitude');
    ArchitectureComponent = model.lookup('Path', 'FunctionalArchitecture/Identify Quadcopter Position');
    AdapterComponent = model.lookup('Path', 'FunctionalArchitecture/Identify Quadcopter Position/Adapter');
    
    QCPositionPort = MeasurePositionComponent.getPort('QuadcopterPosition');
    QCAttitudePort = MeasureAttitudeComponent.getPort('QuadcopterAttitude');
    QCTelemetryPort = ArchitectureComponent.getPort('QuadcopterTelemetry');
    
    QCPositionPort.setInterface(QCPositionInterface);
    QCAttitudePort.setInterface(QCAttitudeInterface);
    QCTelemetryPort.setInterface(QCTelemetryInterface);
    
    MapAdapter(AdapterComponent);    
end
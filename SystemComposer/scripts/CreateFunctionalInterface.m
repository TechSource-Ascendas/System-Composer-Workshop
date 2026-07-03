function CreateFunctionalInterface()
    model = systemcomposer.loadModel(bdroot);
    
    QCPositionInterface = model.InterfaceDictionary.addInterface('QCPosition');
    QCPositionInterface.addElement('Xpos');
    QCPositionInterface.addElement('Ypos');
    QCPositionInterface.addElement('Zpos');
    
    QCAttitudeInterface = model.InterfaceDictionary.addInterface('QCAttitude');
    QCAttitudeInterface.addElement('roll');
    QCAttitudeInterface.addElement('pitch');
    QCAttitudeInterface.addElement('yaw');
    
    QCTelemetryInterface = model.InterfaceDictionary.addInterface('QCTelemetry');
    QCTelemetryInterface.addElement('QCPosition', 'Type', 'Bus: QCPosition');
    QCTelemetryInterface.addElement('QCAttitude', 'Type', 'Bus: QCAttitude');
end
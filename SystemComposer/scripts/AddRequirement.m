function AddRequirement(WorkingDir)
    SystemRequirementSet = slreq.load(WorkingDir + "2_SystemRequirements.slreqx");
    EC09 = SystemRequirementSet.find('Id', 'EC-09');
    EC10 = add(SystemRequirementSet, ...
                'Type', 'Functional', ...
                'Id','EC-10', ...
                'Summary','Analog Input', ...
                'Description', 'The embedded controller shall have an analog to digital converter for measuring sensor inputs.' ... 
                );

    move(EC10, 'after', EC09);

    CustomAttribs = {'Category'                 'Embedded Controller'
                     'Applicable Spec'          'DO-254/DO-160/MIL-STD-810G'
                     'Derived'                  'Y'
                     'Design Assurance Level'   'A'
                     'Safety Related'           'Y'
                     'Verification Method'      'Examination' ...
                    };

    arrayfun(@(Key, Value)setCustomAttribute(EC10,Key{1},Value{1}), CustomAttribs(:,1), CustomAttribs(:,2), 'UniformOutput', false);

    function setCustomAttribute(Requirement, Key, Value)
        setAttribute(Requirement, Key, Value);
    end

end
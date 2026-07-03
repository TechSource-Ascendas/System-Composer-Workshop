function LinkRequirement(WorkingDir)

    StakeholderRequirementSet = slreq.load(WorkingDir + "1_StakeholderRequirements.slreqx");
    SystemRequirementSet = slreq.load(WorkingDir + "2_SystemRequirements.slreqx");

    EC04 = SystemRequirementSet.find('Id', 'EC-04');
    SH14 = StakeholderRequirementSet.find('Id', 'STAKEHOLDER-14');

    slreq.createLink(EC04, SH14);

end
function ArrangeBlocks(ArchitectureModelName)
    if isequal(ArchitectureModelName, bdroot)
        set_param(ArchitectureModelName + "/" + "Check Manual Inputs", 'Position', [345 -35 530 46]);
        set_param(ArchitectureModelName + "/" + "Plan Movement", 'Position', [185 90 689 422]);
        set_param(ArchitectureModelName + "/" + "Identify Target Position", 'Position', [-45 230 141 316]);
        set_param(ArchitectureModelName + "/" + "Execute Movement", 'Position', [735 230 920 311]);
        set_param(ArchitectureModelName + "/" + "Identify Quadcopter Position", 'Position', [350 465 535 551]);
    elseif  isequal(ArchitectureModelName, bdroot + "/" + "Identify Quadcopter Position")
        set_param(ArchitectureModelName + "/" + "Measure Position", 'Position', [-205 -70 65 31]);
        set_param(ArchitectureModelName + "/" + "Measure Attitude", 'Position', [-205 65 65 166]);
        set_param(ArchitectureModelName + "/" + "Adapter", 'Position', [175 0 280 96]);
    end
end
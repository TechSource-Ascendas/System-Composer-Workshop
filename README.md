# MATLAB Workshop

This repository contains reusable workshop materials for an introductory MATLAB, Simulink, and System Composer training session.

The materials are organized as hands-on live scripts, MATLAB helper scripts, System Composer architecture examples, Simulink models, requirements artifacts, and verification assets.

## Repository Contents

```text
System-Composer-Workshop/
|-- Materials/
|   |-- SystemComposer_Workshop.pdf
|   `-- matlab.pdf
|   `-- simulink.pdf
|-- Matlab-Simulink/
|   |-- matlab.mlx
|   `-- simulink.mlx
`-- SystemComposer/
    |-- SystemComposer_Workshop.prj
    |-- SystemComposer_Start_Script.mlx
    |-- scripts/
    |-- FunctionalArchitecture/
    |-- LogicalArchitecture/
    |-- PhysicalArchitecture/
    |-- RequirementsDefinition/
    |-- ArchitectureReport/
    |-- RequirementToTest/
    `-- Complete/
```

## Workshop Tracks

### MATLAB Fundamentals

`Matlab-Simulink/matlab.mlx` introduces:

- The MATLAB desktop environment
- Basic MATLAB commands
- Live scripts
- MATLAB functions
- MATLAB projects and startup/shutdown workflows

### Simulink Fundamentals

`Matlab-Simulink/simulink.mlx` introduces:

- Opening Simulink and using the Start Page
- Simulink Editor tabs
- Library Browser usage
- Running simulations
- Simulation Data Inspector
- Subsystems

### System Composer Workshop

`SystemComposer/SystemComposer_Start_Script.mlx` is the main live script for the System Composer portion of the workshop.

The workshop uses a quadcopter case study and follows a Requirements, Functional, Logical, Physical architecture workflow. Topics include:

- Requirements definition and import
- Requirements linking and traceability
- Functional architecture creation
- Logical architecture modeling
- Profiles, stereotypes, allocations, and interfaces
- Simulink behavior integration
- Sequence diagrams
- Physical architecture views
- Variant components
- SWAP-c style mass, cost, and power analysis
- Architecture reports and web views
- Linking test cases to requirements

## Requirements

Use a MATLAB installation with the products needed for the workshop materials, including:

- MATLAB
- Simulink
- System Composer
- Requirements Toolbox
- Simulink Test
- Simulink Report Generator

Some sections may require additional MathWorks products depending on the specific model or report-generation step being exercised.

## Getting Started

1. Clone or download this repository.
2. Open MATLAB.
3. For MATLAB and Simulink fundamentals, open the live scripts in `Matlab-Simulink/`.
4. For the System Composer workshop, open:

   ```matlab
   openProject("SystemComposer/SystemComposer_Workshop.prj")
   ```

5. When the project opens, the project startup script opens `SystemComposer_Start_Script.mlx`.
6. Follow the live script sections in order.

## Main Entry Points

- `Matlab-Simulink/matlab.mlx` - MATLAB fundamentals
- `Matlab-Simulink/simulink.mlx` - Simulink fundamentals
- `SystemComposer/SystemComposer_Workshop.prj` - System Composer project
- `SystemComposer/SystemComposer_Start_Script.mlx` - main System Composer workshop guide
- `SystemComposer/scripts/startup.m` - project startup script

## Notes for GitHub

This repository includes MATLAB project metadata, live scripts, models, requirements files, and generated workshop artifacts. If you want to keep the repository lightweight, consider excluding generated or temporary folders such as:

- `derived/`
- `work/`
- `slprj/`

Do not remove source workshop assets such as `.mlx`, `.m`, `.prj`, `.slx`, `.slreqx`, `.sldd`, `.mldatx`, or the provided workshop `.zip` files unless you are sure they are not needed.

## Suggested Workflow

Run the workshop in this order:

1. MATLAB fundamentals
2. Simulink fundamentals
3. System Composer requirements definition
4. Functional architecture
5. Logical architecture
6. Physical architecture
7. Analysis and reporting
8. Verification and validation

## License

Add the appropriate license before publishing this repository publicly.

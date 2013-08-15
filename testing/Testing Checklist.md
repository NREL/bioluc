Testing Checklist
================

1. [x] Accuracy of the equations in the model 
1. [x] Consistency of units of measure
1. [ ] Appropriateness of the variable names 
       a. [ ] Spelling
       a. [ ] Misleading names
       a. [ ] Spaces and special characters
       a. [ ] Input/output variables need special scrutiny
1. [x] No fudge factors , unless there is a clear justification for them in terms of deficiencies in input data and modeling assumptions
1. [ ] Usability and functionality of the user interface 
       a. [ ] Accuracy of labels
       a. [ ] Behavior and ranges on controls
       a. [ ] Clarity of graphs
       a. [ ] Sufficiency and ability to run and interpret interesting scenarios
1. [ ] Accuracy, clarity, usability of the documentation and tutorials
       a. [ ] Purpose, scope, and applicability/usage
       a. [ ] Context and conceptual framework
       a. [ ] Assumptions (resolution, processes, feedbacks, scenarios, exogeneities)
       a. [ ] Inputs
       a. [ ] Outputs
       a. [ ] Calibration
       a. [ ] Validation
       a. [ ] Sensitivities
1. [ ] General reasonableness of metrics from canned scenarios, including  
       a. [ ] Per capita consumption and shortfalls
       a. [ ] Land usage
       a. [ ] International trade flows
       a. [ ] Ratio of vegetable to animal products
1. [ ] Reasonableness of system behavior, including  
       a. [ ] Directionality of trends in response to input parameter changes
       a. [ ] Response to perturbations (pulse, steps, ramps, etc.), especially
       a. [ ] Stability or instability
       a. [ ] Time scales of responses and intensity of damping
       a. [ ] Stability of steady-state if inputs are appropriate
       a. [ ] Extreme value testing for basic metrics
       a. [ ] Non-negative stocks should stay positive
       a. [ ] Independent variable in lookup functions stays within the domain of the function
1. [ ] Packaging of the model and data files for release, including license files 
1. [x] The following items are out of scope:
       a. [ ] Overall design of the model
       a. [ ] Formulation of feedback
       a. [ ] Verification of input data
       a. [ ] Validation against historical data
       a. [ ] Comparison against results and publications of other models
       a. [ ] Sensitivity analysis
       a. [ ] Comprehensive extreme value testing
       a. [ ] Use on platforms other than STELLA 9.1.410.0.3 running on Windows
       a. [ ] Section 508 compliance

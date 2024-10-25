fs = require('fs');

const jsonMap = [{
  "title": "About/Contact Us",
  "url": "/contact-us",
  "children": [{
    "title": "Testimonials",
    "url": "/contact-us/testimonials",
    "children": []
  }]
}, {
  "title": "Home",
  "url": "/home",
  "children": []
}, {
  "title": "Instructor Resources",
  "url": "/instructor-resources",
  "children": [{
    "title": "Instructor Materials",
    "url": "/instructor-resources/conceptest-inventory",
    "children": [{
      "title": "Controls",
      "url": "/instructor-resources/conceptest-inventory/controls",
      "children": [{
        "title": "Controls ConcepTest Files",
        "url": "/instructor-resources/conceptest-inventory/controls/controls-conceptest-files",
        "children": []
      }]
    }, {
      "title": "Fluid Mechanics",
      "url": "/instructor-resources/conceptest-inventory/fluid-mechanics",
      "children": [{
        "title": "Fluid Mechanics ConcepTest Files",
        "url": "/instructor-resources/conceptest-inventory/fluid-mechanics/fluid-mechanics-conceptest-files",
        "children": []
      }]
    }, {
      "title": "Heat Transfer",
      "url": "/instructor-resources/conceptest-inventory/heat-transfer",
      "children": [{
        "title": "Heat Transfer ConcepTest Files",
        "url": "/instructor-resources/conceptest-inventory/heat-transfer/heat-transfer-conceptest-files",
        "children": []
      }]
    }, {
      "title": "Kinetics and Reactor Design",
      "url": "/instructor-resources/conceptest-inventory/kinetics-and-reactor-design",
      "children": [{
        "title": "Kinetics ConcepTest Files",
        "url": "/instructor-resources/conceptest-inventory/kinetics-and-reactor-design/kinetics-conceptest-files",
        "children": []
      }]
    }, {
      "title": "Material and Energy Balances",
      "url": "/instructor-resources/conceptest-inventory/material-and-energy-balances",
      "children": [{
        "title": "MEB ConcepTest Files",
        "url": "/instructor-resources/conceptest-inventory/material-and-energy-balances/meb-conceptest-files",
        "children": []
      }]
    }, {
      "title": "Materials Science",
      "url": "/instructor-resources/conceptest-inventory/materials-science",
      "children": [{
        "title": "Materials Science ConcepTest Files",
        "url": "/instructor-resources/conceptest-inventory/materials-science/materials-science-conceptest-files",
        "children": []
      }]
    }, {
      "title": "Separations and Mass Transfer",
      "url": "/instructor-resources/conceptest-inventory/separations-and-mass-transfer",
      "children": [{
        "title": "Separations and Mass Transfer ConcepTest Files",
        "url": "/instructor-resources/conceptest-inventory/separations-and-mass-transfer/separations-and-mass-transfer-conceptest-files",
        "children": []
      }]
    }, {
      "title": "Thermodynamics",
      "url": "/instructor-resources/conceptest-inventory/thermodynamics",
      "children": [{
        "title": "Thermodynamics ConcepTest Files",
        "url": "/instructor-resources/conceptest-inventory/thermodynamics/thermodynamics-conceptest-files",
        "children": []
      }]
    }]
  }, {
    "title": "Screencast Resources",
    "url": "/instructor-resources/screencast-resources",
    "children": []
  }]
}, {
  "title": "learnmeche",
  "url": "/learnmeche",
  "children": []
}, {
  "title": "Quiz Yourself",
  "url": "/quiz-yourself",
  "children": [{
    "title": "Interactive Self-Study Modules",
    "url": "/quiz-yourself/interactive-modules",
    "children": [{
      "title": "Quiz video test",
      "url": "/quiz-yourself/interactive-modules/quiz-video-test",
      "children": []
    }, {
      "title": "Self-Study Modules Flowchart",
      "url": "/quiz-yourself/interactive-modules/self-study-modules-flowchart",
      "children": []
    }]
  }, {
    "title": "Step-by-Step Interactive Simulations",
    "url": "/quiz-yourself/step-by-step-simulations",
    "children": [{
      "title": "Construct a P-x-y Diagram for VLE",
      "url": "/quiz-yourself/step-by-step-simulations/construct-a-p-x-y-diagram-for-vle",
      "children": []
    }, {
      "title": "Construct a T-x-y Diagram for VLE",
      "url": "/quiz-yourself/step-by-step-simulations/construct-a-t-x-y-diagram-for-vle",
      "children": []
    }, {
      "title": "Identify Chemical Potential Plots",
      "url": "/quiz-yourself/step-by-step-simulations/identify-chemical-potential-plots",
      "children": []
    }, {
      "title": "Mass Balances in Absorption and Stripping Units",
      "url": "/quiz-yourself/step-by-step-simulations/mass-balances-in-absorption-and-stripping-units",
      "children": []
    }, {
      "title": "Partial Molar Enthalpy and Entropy Quiz",
      "url": "/quiz-yourself/step-by-step-simulations/partial-molar-enthalpy-and-entropy-quiz",
      "children": []
    }]
  }]
}, {
  "title": "Screencasts",
  "url": "/screencasts",
  "children": [{
    "title": "Benefits/Uses of SC",
    "url": "/screencasts/benefitsofsc",
    "children": []
  }, {
    "title": "Catalysis",
    "url": "/screencasts/catalysis",
    "children": []
  }, {
    "title": "Chemistry",
    "url": "/screencasts/chemistry",
    "children": []
  }, {
    "title": "Engineering Computing",
    "url": "/screencasts/computing",
    "children": []
  }, {
    "title": "Engineering Mathematics",
    "url": "/screencasts/engineering-mathematics",
    "children": []
  }, {
    "title": "example-iframe",
    "url": "/screencasts/example-iframe",
    "children": []
  }, {
    "title": "FE Exam Review",
    "url": "/screencasts/fe-review",
    "children": []
  }, {
    "title": "Fluid Mechanics",
    "url": "/screencasts/fluid-mechanics",
    "children": [{
      "title": "Textbook: Fundamentals of Fluid Mechanics (B.R. Munson, T.H. Okiishi, W.H. Huebsch, Rothmayer - 7th Ed.)",
      "url": "/screencasts/fluid-mechanics/textbook-munson-7th",
      "children": []
    }]
  }, {
    "title": "GadgetFiles",
    "url": "/screencasts/gadgetfiles",
    "children": []
  }, {
    "title": "Heat Transfer",
    "url": "/screencasts/heat-transfer",
    "children": [{
      "title": "Heat Transfer Quiz Screencasts",
      "url": "/screencasts/heat-transfer/heat-transfer-quiz-screencasts",
      "children": []
    }, {
      "title": "Textbook: Introduction to Heat Transfer (5th Edition)",
      "url": "/screencasts/heat-transfer/textbook-incropera-5th",
      "children": []
    }]
  }, {
    "title": "Kinetics/Reactor Design",
    "url": "/screencasts/kinetics-reactor-design",
    "children": [{
      "title": "Kinetics Exam Review",
      "url": "/screencasts/kinetics-reactor-design/exam-review",
      "children": []
    }, {
      "title": "Textbook: Essentials of Chemical Reaction Engineering (1st Edition)",
      "url": "/screencasts/kinetics-reactor-design/textbook-fogler-1st",
      "children": []
    }, {
      "title": "textbook-hill-2nd",
      "url": "/screencasts/kinetics-reactor-design/textbook-hill-2nd",
      "children": []
    }, {
      "title": "Textbook: Chemical Reactor Analysis and Design Fundamentals (1st Edition)",
      "url": "/screencasts/kinetics-reactor-design/textbook-rawlings-1st",
      "children": []
    }]
  }, {
    "title": "Mass/Energy Balances",
    "url": "/screencasts/mass-energy-balances",
    "children": [{
      "title": "MEB Exam Review",
      "url": "/screencasts/mass-energy-balances/exam-review",
      "children": []
    }, {
      "title": "Textbook: Elementary Principles of Chemical Processes (3rd Edition)",
      "url": "/screencasts/mass-energy-balances/textbook-felder-3rd",
      "children": []
    }]
  }, {
    "title": "Materials Science",
    "url": "/screencasts/materials-science",
    "children": [{
      "title": "Textbook: Fundamentals of Materials Science and Engineering (4th Edition)",
      "url": "/screencasts/materials-science/textbook-callister-4th",
      "children": []
    }, {
      "title": "Textbook: Materials Science and Engineering: An Introduction (8th Edition)",
      "url": "/screencasts/materials-science/textbook-callister-8th",
      "children": []
    }]
  }, {
    "title": "Physical Chemistry",
    "url": "/screencasts/p-chem",
    "children": []
  }, {
    "title": "Process Control",
    "url": "/screencasts/process-controls",
    "children": [{
      "title": "Blending Process: Closed-Loop Response",
      "url": "/screencasts/process-controls/blending-process-closed-loop-response",
      "children": []
    }, {
      "title": "Blending Process: Closed-Loop Stability",
      "url": "/screencasts/process-controls/blending-process-closed-loop-stability",
      "children": []
    }, {
      "title": "Blending Process: Closing the Loop",
      "url": "/screencasts/process-controls/blending-process-closing-the-loop",
      "children": []
    }, {
      "title": "Blending Process: Deviation Variables",
      "url": "/screencasts/process-controls/blending-process-deviation-variables",
      "children": []
    }, {
      "title": "Blending Process: Direct Synthesis",
      "url": "/screencasts/process-controls/blending-process-direct-synthesis",
      "children": []
    }, {
      "title": "Blending Process: Dynamic Modeling",
      "url": "/screencasts/process-controls/blending-process-dynamic-modeling",
      "children": []
    }, {
      "title": "Blending Process: Introduction to Laplace Transform",
      "url": "/screencasts/process-controls/blending-process-introduction-to-laplace-transform",
      "children": []
    }, {
      "title": "Blending Process: Introduction to Linearization",
      "url": "/screencasts/process-controls/blending-process-introduction-to-linearization",
      "children": []
    }, {
      "title": "Blending Process: Introduction to Ratio Control",
      "url": "/screencasts/process-controls/blending-process-introduction-to-ratio-control",
      "children": []
    }, {
      "title": "Blending Process: Laplace Transform and State Space Quiz Video",
      "url": "/screencasts/process-controls/blending-process-laplace-transform-and-state-space-quiz-video",
      "children": []
    }, {
      "title": "Blending Process: Laplace Transformation Example",
      "url": "/screencasts/process-controls/blending-process-laplace-transformation-example",
      "children": []
    }, {
      "title": "Blending Process: Linearization Example",
      "url": "/screencasts/process-controls/blending-process-linearization-example",
      "children": []
    }, {
      "title": "Blending Process: Ratio Control Example",
      "url": "/screencasts/process-controls/blending-process-ratio-control-example",
      "children": []
    }, {
      "title": "Blending Process: Relative Gain Array",
      "url": "/screencasts/process-controls/blending-process-relative-gain-array",
      "children": []
    }, {
      "title": "Blending Process: State Space",
      "url": "/screencasts/process-controls/blending-process-state-space",
      "children": []
    }, {
      "title": "Blending Process: Steady-State",
      "url": "/screencasts/process-controls/blending-process-steady-state",
      "children": []
    }, {
      "title": "Process Control: Quiz Screencasts",
      "url": "/screencasts/process-controls/process-control-quiz-screencasts",
      "children": []
    }]
  }, {
    "title": "Process Design",
    "url": "/screencasts/process-design",
    "children": []
  }, {
    "title": "Quizzes",
    "url": "/screencasts/quizzes",
    "children": [{
      "title": "Fluids: Quiz Screencasts",
      "url": "/screencasts/quizzes/fluids-quiz-screencasts",
      "children": [{
        "title": "Bernoulli Equation Derivation",
        "url": "/screencasts/quizzes/fluids-quiz-screencasts/bernoulli-equation-derivation",
        "children": []
      }, {
        "title": "Blasius Example",
        "url": "/screencasts/quizzes/fluids-quiz-screencasts/blasius-example",
        "children": []
      }, {
        "title": "Blasius Solution for Boundary Layer Flow",
        "url": "/screencasts/quizzes/fluids-quiz-screencasts/blasius-solution-for-boundary-layer-flow",
        "children": []
      }, {
        "title": "Characteristics of a Fluid",
        "url": "/screencasts/quizzes/fluids-quiz-screencasts/characteristics-of-a-fluid",
        "children": []
      }, {
        "title": "Introduction to Hydrostatic Pressure",
        "url": "/screencasts/quizzes/fluids-quiz-screencasts/introduction-to-hydrostatic-pressure",
        "children": []
      }, {
        "title": "Simple Bernoulli Equation Example",
        "url": "/screencasts/quizzes/fluids-quiz-screencasts/simple-bernoulli-equation-example",
        "children": []
      }, {
        "title": "What is Buoyancy?",
        "url": "/screencasts/quizzes/fluids-quiz-screencasts/what-is-buoyancy",
        "children": []
      }]
    }, {
      "title": "Kinetics: Quiz Screencasts",
      "url": "/screencasts/quizzes/kinetics-quiz-screencasts",
      "children": [{
        "title": "Batch Reactor Overview",
        "url": "/screencasts/quizzes/kinetics-quiz-screencasts/batch-reactor-overview",
        "children": []
      }, {
        "title": "Continuous Stirred Tank Reactor Overview",
        "url": "/screencasts/quizzes/kinetics-quiz-screencasts/continuous-stirred-tank-reactor-overview",
        "children": []
      }, {
        "title": "Mole Balance on a Plug Flow Reactor",
        "url": "/screencasts/quizzes/kinetics-quiz-screencasts/mole-balance-on-a-plug-flow-reactor",
        "children": []
      }, {
        "title": "Multiple Steady-States in a CSTR: Heat Generation",
        "url": "/screencasts/quizzes/kinetics-quiz-screencasts/multiple-steady-states-in-a-cstr-heat-generation",
        "children": []
      }, {
        "title": "Multiple Steady States in a CSTR (Interactive Simulation)",
        "url": "/screencasts/quizzes/kinetics-quiz-screencasts/multiple-steady-states-in-a-cstr-interactive-simulation",
        "children": []
      }, {
        "title": "Multiple Steady States Part 1",
        "url": "/screencasts/quizzes/kinetics-quiz-screencasts/multiple-steady-states-part-1",
        "children": []
      }, {
        "title": "Multiple Steady States Part 2",
        "url": "/screencasts/quizzes/kinetics-quiz-screencasts/multiple-steady-states-part-2",
        "children": []
      }, {
        "title": "Plug Flow Reactor Overview",
        "url": "/screencasts/quizzes/kinetics-quiz-screencasts/plug-flow-reactor-overview",
        "children": []
      }, {
        "title": "Semibatch Reactor Overview",
        "url": "/screencasts/quizzes/kinetics-quiz-screencasts/semibatch-reactor-overview",
        "children": []
      }]
    }, {
      "title": "Material and Energy Balances Quiz Screencasts",
      "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts",
      "children": [{
        "title": "Average Molecular Weight",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/average-molecular-weight",
        "children": []
      }, {
        "title": "Bubble and Dew Points for Binary Mixtures",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/bubble-and-dew-points-for-binary-mixtures",
        "children": []
      }, {
        "title": "Bypass Example",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/bypass-example",
        "children": []
      }, {
        "title": "Cubic Equation of State Introduction",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/cubic-equation-of-state-introduction",
        "children": []
      }, {
        "title": "Degree of Freedom Analysis on Multiple Units",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/degree-of-freedom-analysis-on-multiple-units",
        "children": []
      }, {
        "title": "Density, Specific Volume, and Specific Gravity",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/density-specific-volume-and-specific-gravity",
        "children": []
      }, {
        "title": "Example of a Purge Process",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/example-of-a-purge-process",
        "children": []
      }, {
        "title": "Extent of Reaction",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/extent-of-reaction",
        "children": []
      }, {
        "title": "Flow Chart for Multiple Units",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/flow-chart-for-multiple-units",
        "children": []
      }, {
        "title": "Force and Weight",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/force-and-weight",
        "children": []
      }, {
        "title": "Fractional Conversion",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/fractional-conversion",
        "children": []
      }, {
        "title": "General Balance Equation",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/general-balance-equation",
        "children": []
      }, {
        "title": "General Mass Balance on a Single Tank",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/general-mass-balance-on-a-single-tank",
        "children": []
      }, {
        "title": "Heat of Combustion",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/heat-of-combustion",
        "children": []
      }, {
        "title": "Hess's Law",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/hess-s-law",
        "children": []
      }, {
        "title": "How to Use a Psychrometric Chart",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/how-to-use-a-psychrometric-chart",
        "children": []
      }, {
        "title": "Hypothetical Process Paths",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/hypothetical-process-paths",
        "children": []
      }, {
        "title": "Including a Phase Change in an Energy Balance",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/including-a-phase-change-in-an-energy-balance",
        "children": []
      }, {
        "title": "Introduction to Energy",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/introduction-to-energy",
        "children": []
      }, {
        "title": "Introduction to Pressure",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/introduction-to-pressure",
        "children": []
      }, {
        "title": "Langmuir Isotherm Introduction",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/langmuir-isotherm-introduction",
        "children": []
      }, {
        "title": "Latent Heat",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/latent-heat",
        "children": []
      }, {
        "title": "Manometers",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/manometers",
        "children": []
      }, {
        "title": "Mass and Mole Fractions",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/mass-and-mole-fractions",
        "children": []
      }, {
        "title": "Mass and Volumetric Flowrates Relationship",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/mass-and-volumetric-flowrates-relationship",
        "children": []
      }, {
        "title": "Open and Closed Systems",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/open-and-closed-systems",
        "children": []
      }, {
        "title": "Reference State Overview",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/reference-state-overview",
        "children": []
      }, {
        "title": "Scaling a Material Balance",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/scaling-a-material-balance",
        "children": []
      }, {
        "title": "Significant Figures",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/significant-figures",
        "children": []
      }, {
        "title": "Single-Component Pressure-Temperature Diagram",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/single-component-pressure-temperature-diagram",
        "children": []
      }, {
        "title": "Solubility Introduction",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/solubility-introduction",
        "children": []
      }, {
        "title": "Standard Temperature and Pressure - Ideal Gas Law",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/standard-temperature-and-pressure---ideal-gas-law",
        "children": []
      }, {
        "title": "Stoichiometry",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/stoichiometry",
        "children": []
      }, {
        "title": "Systems of Units",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/systems-of-units",
        "children": []
      }, {
        "title": "Temperature Scales",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/temperature-scales",
        "children": []
      }, {
        "title": "The Critical Point",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/the-critical-point",
        "children": []
      }, {
        "title": "Three Methods for Balancing Reactive Processes",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/three-methods-for-balancing-reactive-processes",
        "children": []
      }, {
        "title": "Using Extent of Reaction for Multiple Reactions",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/using-extent-of-reaction-for-multiple-reactions",
        "children": []
      }, {
        "title": "Virial Equation of State Introduction",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/virial-equation-of-state-introduction",
        "children": []
      }, {
        "title": "Wet to Dry Basis",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/wet-to-dry-basis",
        "children": []
      }, {
        "title": "What is Enthalpy?",
        "url": "/screencasts/quizzes/material-and-energy-balances-quiz-screencasts/what-is-enthalpy",
        "children": []
      }]
    }, {
      "title": "Separations: Quiz Screencasts",
      "url": "/screencasts/quizzes/separations-quiz-screencasts",
      "children": [{
        "title": "Balances for an Adiabatic Flash Drum",
        "url": "/screencasts/quizzes/separations-quiz-screencasts/balances-for-an-adiabatic-flash-drum",
        "children": []
      }, {
        "title": "Flash Distillation Derivation",
        "url": "/screencasts/quizzes/separations-quiz-screencasts/flash-distillation-derivation",
        "children": []
      }, {
        "title": "Hunter-Nash Method 1: Mixing and Operating Points",
        "url": "/screencasts/quizzes/separations-quiz-screencasts/hunter-nash-method-1-mixing-and-operating-points",
        "children": []
      }, {
        "title": "Hunter-Nash Method 2: Number of Stages",
        "url": "/screencasts/quizzes/separations-quiz-screencasts/hunter-nash-method-2-number-of-stages",
        "children": []
      }, {
        "title": "Plotting a Ternary Phase Diagram",
        "url": "/screencasts/quizzes/separations-quiz-screencasts/plotting-a-ternary-phase-diagram",
        "children": []
      }, {
        "title": "Using a Triangular (Ternary) Phase Diagram",
        "url": "/screencasts/quizzes/separations-quiz-screencasts/using-a-triangular-ternary-phase-diagram",
        "children": []
      }]
    }, {
      "title": "Thermodynamics: Quiz Screencasts",
      "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts",
      "children": [{
        "title": "Adiabatic Compression/Expansion: Enthalpy-Entropy Diagram",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/adiabatic-compression-expansion-enthalpy-entropy-diagram",
        "children": []
      }, {
        "title": "Adiabatic Reversible Process for Ideal Gas",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/adiabatic-reversible-process-for-ideal-gas",
        "children": []
      }, {
        "title": "Calculate Vapor-Liquid Equilibrium using an EOS",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/calculate-vapor-liquid-equilibrium-using-an-eos",
        "children": []
      }, {
        "title": "Calculate Work for Reversible &amp; Irreversible Expansion/Compression",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/calculate-work-for-reversible-irreversible-expansion-compression",
        "children": []
      }, {
        "title": "Carnot Heat Engine Calculations",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/carnot-heat-engine-calculations",
        "children": []
      }, {
        "title": "Chemical Potential: Pressure Dependence for Single Component Part 1",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/chemical-potential-pressure-dependence-for-single-component-part-1",
        "children": []
      }, {
        "title": "Chemical Potential: Temperature Dependence for Single Component Part 1",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/chemical-potential-temperature-dependence-for-single-component-part-1",
        "children": []
      }, {
        "title": "Cooling Curves for a Liquid-Solid System",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/cooling-curves-for-a-liquid-solid-system",
        "children": []
      }, {
        "title": "Departure Function: van der Waals Fluid",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/departure-function-van-der-waals-fluid",
        "children": []
      }, {
        "title": "Energy Balance Around a Turbine",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/energy-balance-around-a-turbine",
        "children": []
      }, {
        "title": "Energy Balances on a Semibatch Reactor",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/energy-balances-on-a-semibatch-reactor",
        "children": []
      }, {
        "title": "Equilibrium Constant Introduction",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/equilibrium-constant-introduction",
        "children": []
      }, {
        "title": "Flow Work",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/flow-work",
        "children": []
      }, {
        "title": "Fugacity Temperature Dependence: Single Component",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/fugacity-temperature-dependence-single-component",
        "children": []
      }, {
        "title": "Heat Engine Introduction",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/heat-engine-introduction",
        "children": []
      }, {
        "title": "How to Calculate Entropy Changes: Ideal Gases",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/how-to-calculate-entropy-changes-ideal-gases",
        "children": []
      }, {
        "title": "How to Calculate Entropy Changes: Liquids, Solids, and Phase Changes",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/how-to-calculate-entropy-changes-liquids-solids-and-phase-changes",
        "children": []
      }, {
        "title": "How to Calculate Entropy Changes: Mixing Ideal Gases",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/how-to-calculate-entropy-changes-mixing-ideal-gases",
        "children": []
      }, {
        "title": "How to Use a Psychrometric Chart",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/how-to-use-a-psychrometric-chart",
        "children": []
      }, {
        "title": "Ideal Gas Properties",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/ideal-gas-properties",
        "children": []
      }, {
        "title": "Inert Effect on Chemical Equilibrium",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/inert-effect-on-chemical-equilibrium",
        "children": []
      }, {
        "title": "Introduction to Equilibrium for Partially-Miscible Liquids",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/introduction-to-equilibrium-for-partially-miscible-liquids",
        "children": []
      }, {
        "title": "Introduction to First Law: Closed System",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/introduction-to-first-law-closed-system",
        "children": []
      }, {
        "title": "Introduction to First Law: Open Systems",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/introduction-to-first-law-open-systems",
        "children": []
      }, {
        "title": "Introduction to Heterogeneous Chemical Equilibrium",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/introduction-to-heterogeneous-chemical-equilibrium",
        "children": []
      }, {
        "title": "Introduction to Non-Ideal Solutions",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/introduction-to-non-ideal-solutions",
        "children": []
      }, {
        "title": "Introduction to Single-Component Fugacity",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/introduction-to-single-component-fugacity",
        "children": []
      }, {
        "title": "Joule-Thomson Expansion",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/joule-thomson-expansion",
        "children": []
      }, {
        "title": "Lever Rule Derivation",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/lever-rule-derivation",
        "children": []
      }, {
        "title": "Material Balances Review",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/material-balances-review",
        "children": []
      }, {
        "title": "Partial Molar Properties: Binary Solutions",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/partial-molar-properties-binary-solutions",
        "children": []
      }, {
        "title": "Partial Molar Quantities",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/partial-molar-quantities",
        "children": []
      }, {
        "title": "Phase Diagram for Partially-Miscible Liquids",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/phase-diagram-for-partially-miscible-liquids",
        "children": []
      }, {
        "title": "Power Cycle Introduction",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/power-cycle-introduction",
        "children": []
      }, {
        "title": "Pressure-Enthalpy Diagram",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/pressure-enthalpy-diagram",
        "children": []
      }, {
        "title": "Pressure-Enthalpy Diagram for Rankine Cycle",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/pressure-enthalpy-diagram-for-rankine-cycle",
        "children": []
      }, {
        "title": "Pressure-Temperature Diagrams for Single Component Systems",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/pressure-temperature-diagrams-for-single-component-systems",
        "children": []
      }, {
        "title": "Quality of Steam",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/quality-of-steam",
        "children": []
      }, {
        "title": "Raoult's Law Explanation",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/raoult-s-law-explanation",
        "children": []
      }, {
        "title": "Reading a Psychrometric Chart",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/reading-a-psychrometric-chart",
        "children": []
      }, {
        "title": "Refrigeration Cycle Introduction",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/refrigeration-cycle-introduction",
        "children": []
      }, {
        "title": "Relative and Absolute Humidity",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/relative-and-absolute-humidity",
        "children": []
      }, {
        "title": "Saturation Pressure from EOS Spreadsheet",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/saturation-pressure-from-eos-spreadsheet",
        "children": []
      }, {
        "title": "Second Law of Thermodynamics",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/second-law-of-thermodynamics",
        "children": []
      }, {
        "title": "Single-Component Phase Diagrams",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/single-component-phase-diagrams",
        "children": []
      }, {
        "title": "Solid-Liquid Phase Diagrams",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/solid-liquid-phase-diagrams",
        "children": []
      }, {
        "title": "Solving a Steam Turbine Problem",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/solving-a-steam-turbine-problem",
        "children": []
      }, {
        "title": "State Function Explanation",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/state-function-explanation",
        "children": []
      }, {
        "title": "Temperature Dependence of Equilibrium Constant",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/temperature-dependence-of-equilibrium-constant",
        "children": []
      }, {
        "title": "The Critical Point",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/the-critical-point",
        "children": []
      }, {
        "title": "The Equilibrium Constant",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/the-equilibrium-constant",
        "children": []
      }, {
        "title": "Three Parameter Equation of State (EOS) Introduction",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/three-parameter-equation-of-state-eos-introduction",
        "children": []
      }, {
        "title": "T-S and P-H Diagrams",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/t-s-and-p-h-diagrams",
        "children": []
      }, {
        "title": "Vapor-Liquid Equilibrium for Immiscible Liquids",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/vapor-liquid-equilibrium-for-immiscible-liquids",
        "children": []
      }, {
        "title": "What is an Activity Coefficient?",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/what-is-an-activity-coefficient",
        "children": []
      }, {
        "title": "What is Chemical Potential? Multi-Component",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/what-is-chemical-potential-multi-component",
        "children": []
      }, {
        "title": "What is Fugacity?",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/what-is-fugacity",
        "children": []
      }, {
        "title": "What is Fugacity in a Mixture?",
        "url": "/screencasts/quizzes/thermodynamics-quiz-screencasts/what-is-fugacity-in-a-mixture",
        "children": []
      }]
    }]
  }, {
    "title": "Separations/Mass Transfer",
    "url": "/screencasts/separations-mass-transfer",
    "children": [{
      "title": "Textbook: Separation Process Principles (3rd Edition)",
      "url": "/screencasts/separations-mass-transfer/textbook-seader-3rd",
      "children": []
    }, {
      "title": "Textbook: Separation Process Engineering (3rd Edition)",
      "url": "/screencasts/separations-mass-transfer/textbook-wankat-3rd",
      "children": []
    }, {
      "title": "Textbook: Fundamentals of Momentum, Heat and Mass Transfer (5th Edition)",
      "url": "/screencasts/separations-mass-transfer/textbook-welty-5th",
      "children": []
    }]
  }, {
    "title": "Statistics",
    "url": "/screencasts/statistics",
    "children": []
  }, {
    "title": "Thermodynamics",
    "url": "/screencasts/thermodynamics",
    "children": [{
      "title": "Thermodynamics Exam Review",
      "url": "/screencasts/thermodynamics/exam-review",
      "children": []
    }, {
      "title": "Textbook: Introductory Chemical Engineering Thermodynamics (1st Edition)",
      "url": "/screencasts/thermodynamics/textbook-elliottlira-1st",
      "children": []
    }, {
      "title": "Textbook: Introductory Chemical Engineering Thermodynamics (2nd Edition)",
      "url": "/screencasts/thermodynamics/textbook-elliottlira-2nd",
      "children": []
    }, {
      "title": "Textbook: Introduction to Chemical Engineering Thermodynamics (7th Edition)",
      "url": "/screencasts/thermodynamics/textbook-SVNA-7th",
      "children": []
    }, {
      "title": "Textbook trial",
      "url": "/screencasts/thermodynamics/textbook-tir",
      "children": []
    }]
  }, {
    "title": "Tips for Making Effective Screencasts",
    "url": "/screencasts/screencast-making-tips",
    "children": []
  }, {
    "title": "What Are Screencasts?",
    "url": "/screencasts/what-are-screencasts",
    "children": []
  }]
}, {
  "title": "Simulations",
  "url": "/simulations",
  "children": [{
    "title": "Carnot Cycles with Irreversible Heat Transfer",
    "url": "/simulations/carnot-cycles-with-irreversible-heat-transfer",
    "children": []
  }, {
    "title": "CDF files",
    "url": "/simulations/cdf-files",
    "children": []
  }, {
    "title": "Construct an x-y Diagram for an Absorption Column",
    "url": "/simulations/construct-an-x-y-diagram-for-an-absorption-column",
    "children": []
  }, {
    "title": "Fluid Mechanics",
    "url": "/simulations/fluid-mechanics",
    "children": [{
      "title": "A 2D Flow Field",
      "url": "/simulations/fluid-mechanics/a-2d-flow-field",
      "children": []
    }, {
      "title": "Boundary Layer Flow Between Parallel Plates",
      "url": "/simulations/fluid-mechanics/boundary-layer-flow-between-parallel-plates",
      "children": []
    }, {
      "title": "Boundary Layer in Flow between Parallel Plates",
      "url": "/simulations/fluid-mechanics/boundary-layer-in-flow-between-parallel-plates",
      "children": []
    }, {
      "title": "Buoyancy of a Floating Cylinder",
      "url": "/simulations/fluid-mechanics/bouyancy-of-a-floating-cylinder",
      "children": []
    }, {
      "title": "Couette Flow",
      "url": "/simulations/fluid-mechanics/couette-flow",
      "children": []
    }, {
      "title": "Double-Sided Couette Flow",
      "url": "/simulations/fluid-mechanics/double-sided-couette-flow",
      "children": []
    }, {
      "title": "Equivalent Length of a Pipe with Fittings and Valves",
      "url": "/simulations/fluid-mechanics/equivalent-length-of-a-pipe-with-fittings-and-valves",
      "children": []
    }, {
      "title": "Flow around a Sphere at Finite Reynolds Number by Galerkin Method",
      "url": "/simulations/fluid-mechanics/flow-around-a-sphere-at-finite-reynolds-number-by-galerkin-method",
      "children": []
    }, {
      "title": "Flow from a Tank at Constant Height",
      "url": "/simulations/fluid-mechanics/flow-from-a-tank-at-constant-height",
      "children": []
    }, {
      "title": "Fluid Velocity in Rigid Body Rotation and Irrotational Flow",
      "url": "/simulations/fluid-mechanics/fluid-velocity-in-rigid-body-rotation-and-irrotational-flow",
      "children": []
    }, {
      "title": "Flying a Box Kite",
      "url": "/simulations/fluid-mechanics/flying-a-box-kite",
      "children": []
    }, {
      "title": "Force on a Thrust Reverser",
      "url": "/simulations/fluid-mechanics/force-on-a-thrust-reverser",
      "children": []
    }, {
      "title": "Forces Completely Submerged Gate",
      "url": "/simulations/fluid-mechanics/forces-completely-submerged-gate",
      "children": []
    }, {
      "title": "Forces on a Partially Submerged Gate",
      "url": "/simulations/fluid-mechanics/forces-on-a-partially-submerged-gate",
      "children": []
    }, {
      "title": "Frictional Pressure Drop in a Pipe",
      "url": "/simulations/fluid-mechanics/frictional-pressure-drop-in-a-pipe",
      "children": []
    }, {
      "title": "Laminar Flow",
      "url": "/simulations/fluid-mechanics/laminar-flow",
      "children": []
    }, {
      "title": "Linear Momentum Balance in Aerodynamic Thrust",
      "url": "/simulations/fluid-mechanics/linear-momentum-balance-in-aerodynamic-thrust",
      "children": []
    }, {
      "title": "Manometers",
      "url": "/simulations/fluid-mechanics/manometers",
      "children": []
    }, {
      "title": "Measuring Flow Rates with a Pitot Tube",
      "url": "/simulations/fluid-mechanics/measuring-flow-rates-with-a-pitot-tube",
      "children": []
    }, {
      "title": "Pressure of a Rotating Fluid",
      "url": "/simulations/fluid-mechanics/pressure-of-a-rotating-fluid",
      "children": []
    }, {
      "title": "Pressure Profile for Column of Multiple Fluids",
      "url": "/simulations/fluid-mechanics/pressure-profile-for-column-of-multiple-fluids",
      "children": []
    }, {
      "title": "Pressure Within an Accelerating Container",
      "url": "/simulations/fluid-mechanics/pressure-with-an-accelerating-container",
      "children": []
    }, {
      "title": "Trial",
      "url": "/simulations/fluid-mechanics/trial",
      "children": []
    }, {
      "title": "Vectors",
      "url": "/simulations/fluid-mechanics/vectors",
      "children": []
    }, {
      "title": "Velocity Profile for Immiscible Viscous Fluids",
      "url": "/simulations/fluid-mechanics/velocity-profile-for-immiscible-viscous-fluids",
      "children": []
    }, {
      "title": "Velocity Profile for Immiscible Viscous Fluids",
      "url": "/simulations/fluid-mechanics/velocity-profile-for-immiscible-viscous-fluids-1",
      "children": []
    }]
  }, {
    "title": "Fugacity Dependence on Pressure in an Ideal Binary Mixture",
    "url": "/simulations/fugacity-dependence-on-pressure-in-an-ideal-binary-mixture",
    "children": []
  }, {
    "title": "Heat Transfer",
    "url": "/simulations/heat-transfer",
    "children": [{
      "title": "Boundary Layer",
      "url": "/simulations/heat-transfer/boundary-layer",
      "children": []
    }, {
      "title": "Combined Free and Forced Convection",
      "url": "/simulations/heat-transfer/combined-free-and-forced-convection",
      "children": []
    }, {
      "title": "Compare Fins",
      "url": "/simulations/heat-transfer/compare-fins",
      "children": []
    }, {
      "title": "Conduction Through a Composite Wall",
      "url": "/simulations/heat-transfer/conduction-through-a-composite-wall",
      "children": []
    }, {
      "title": "Cooking a Turkey",
      "url": "/simulations/heat-transfer/cooking-a-turkey",
      "children": []
    }, {
      "title": "draft",
      "url": "/simulations/heat-transfer/draft",
      "children": []
    }, {
      "title": "Effect of Wind Chill on Skin Temperature",
      "url": "/simulations/heat-transfer/effect-of-wind-chill-on-skin-temperature",
      "children": []
    }, {
      "title": "Energy Transfer Between Two Blackbodies",
      "url": "/simulations/heat-transfer/energy-transfer-between-two-blackbodies",
      "children": []
    }, {
      "title": "Heat Exchanger",
      "url": "/simulations/heat-transfer/heat-exchanger",
      "children": []
    }, {
      "title": "Heat Generation and Conduction through Composite Walls",
      "url": "/simulations/heat-transfer/heat-generation-and-conduction-through-composite-walls",
      "children": []
    }, {
      "title": "Heat Transfer and Temperature Distribution in a Fin",
      "url": "/simulations/heat-transfer/heat-transfer-and-temperature-distribution-in-a-fin",
      "children": []
    }, {
      "title": "Heat Transfer between Flowing Liquids in Cylindrical Tubes",
      "url": "/simulations/heat-transfer/heat-transfer-between-flowing-liquids-in-cylindrical-tubes",
      "children": []
    }, {
      "title": "Heat Transfer in a Bank of Tubes",
      "url": "/simulations/heat-transfer/heat-transfer-in-a-bank-of-tubes",
      "children": []
    }, {
      "title": "Heat Transfer in Fins",
      "url": "/simulations/heat-transfer/heat-transfer-in-fins",
      "children": []
    }, {
      "title": "Heat Transfer Through a Cylinder",
      "url": "/simulations/heat-transfer/heat-transfer-through-a-cylinder",
      "children": []
    }, {
      "title": "Identify Temperature Profiles for Heat Generation or Conduction through Composite Walls",
      "url": "/simulations/heat-transfer/identify-temperature-profiles-for-heat-generation-or-conduction-through-composite-walls",
      "children": []
    }, {
      "title": "Injecting Water into Liquid Nitrogen Tanks",
      "url": "/simulations/heat-transfer/injecting-water-into-liquid-nitrogen-tanks",
      "children": []
    }, {
      "title": "Lumped Capacitance Model vs Full Model",
      "url": "/simulations/heat-transfer/lumped-capacitance-model-vs-full-model",
      "children": []
    }, {
      "title": "Melting Ice Simulation",
      "url": "/simulations/heat-transfer/melting-ice-simulation",
      "children": []
    }, {
      "title": "Parallel and Counterflow Heat Exchangers",
      "url": "/simulations/heat-transfer/parallel-and-counterflow-heat-exchangers",
      "children": []
    }, {
      "title": "Plane Wall",
      "url": "/simulations/heat-transfer/plane-wall",
      "children": []
    }, {
      "title": "Radiation Shielding of a Spherical Body",
      "url": "/simulations/heat-transfer/radiation-shielding-of-a-spherical-body",
      "children": []
    }, {
      "title": "Transient Conduction Through a Plane Wall",
      "url": "/simulations/heat-transfer/transient-conduction-through-a-plane-wall",
      "children": []
    }]
  }, {
    "title": "Kinetics/Reactor Design",
    "url": "/simulations/kinetics-reactor-design",
    "children": [{
      "title": "Adiabatic PFR with Recycle",
      "url": "/simulations/kinetics-reactor-design/adiabatic-pfr-with-recycle",
      "children": []
    }, {
      "title": "Autothermal Reactor",
      "url": "/simulations/kinetics-reactor-design/autothermal-reactor",
      "children": []
    }, {
      "title": "Batch Reactors at Constant Volume or Constant Pressure",
      "url": "/simulations/kinetics-reactor-design/batch-reactors-at-constant-volume-or-constant-pressure",
      "children": []
    }, {
      "title": "Batch Reactor with Multiple Reactions",
      "url": "/simulations/kinetics-reactor-design/batch-reactor-with-multiple-reactions",
      "children": []
    }, {
      "title": "Concurrent and Countercurrent Cooling in Tubular Reactors with Exothermic Chemical Reactions",
      "url": "/simulations/kinetics-reactor-design/concurrent-and-countercurrent-cooling-in-tubular-reactors-with-exothermic-chemical-reactions",
      "children": []
    }, {
      "title": "Construct a Conversion-Temperature Diagram for a Reversible Adiabatic Reaction",
      "url": "/simulations/kinetics-reactor-design/construct-a-conversion-temperature-diagram-for-a-reversible-adiabatic-reaction",
      "children": []
    }, {
      "title": "CSTR That Loses Cooling",
      "url": "/simulations/kinetics-reactor-design/cstr-that-loses-cooling",
      "children": []
    }, {
      "title": "Density Cannot Be Ignored in a PFR",
      "url": "/simulations/kinetics-reactor-design/density-cannot-be-ignored-in-a-pfr",
      "children": []
    }, {
      "title": "Diffusion and Reaction in a Catalyst Pellet",
      "url": "/simulations/kinetics-reactor-design/diffusion-and-reaction-in-a-catalyst-pellet",
      "children": []
    }, {
      "title": "Effect of Tube Diameter PFR",
      "url": "/simulations/kinetics-reactor-design/effect-of-tube-diameter-pfr",
      "children": []
    }, {
      "title": "Enzyme Inhibition Kinetics",
      "url": "/simulations/kinetics-reactor-design/enzyme-inhibition-kinetics",
      "children": []
    }, {
      "title": "Equally Sized Mixed Flow Reactors in Series versus Plug Flow Reactor",
      "url": "/simulations/kinetics-reactor-design/equally-sized-mixed-flow-reactors-in-series-versus-plug-flow-reactor",
      "children": []
    }, {
      "title": "Estimating Kinetic Parameters from a Batch Reactor Experiment",
      "url": "/simulations/kinetics-reactor-design/estimating-kinetic-parameters-from-a-batch-reactor-experiment",
      "children": []
    }, {
      "title": "Ethane Pyrolysis in a Tubular Reactor",
      "url": "/simulations/kinetics-reactor-design/ethane-pyrolysis-in-a-tubular-reactor",
      "children": []
    }, {
      "title": "Fed-Batch Fermentation",
      "url": "/simulations/kinetics-reactor-design/fed-batch-fermentation",
      "children": []
    }, {
      "title": "Inhibition of Enzyme Reactions in CSTR and Batch Reactors",
      "url": "/simulations/kinetics-reactor-design/inhibition-of-enzyme-reactions-in-cstr-and-batch-reactors",
      "children": []
    }, {
      "title": "Isothermal Plug Flow Reactor",
      "url": "/simulations/kinetics-reactor-design/isothermal-plug-flow-reactor",
      "children": []
    }, {
      "title": "Isothermal Plug Flow Reactor with Recycle",
      "url": "/simulations/kinetics-reactor-design/isothermal-plug-flow-reactor-with-recycle",
      "children": []
    }, {
      "title": "Langmuir-Hinshelwood Reaction in a PFR",
      "url": "/simulations/kinetics-reactor-design/langmuir-hinshelwood-reaction-in-a-pfr",
      "children": []
    }, {
      "title": "Langmuir Isotherms for a Binary Mixture",
      "url": "/simulations/kinetics-reactor-design/langmuir-isotherms-for-a-binary-mixture",
      "children": []
    }, {
      "title": "Langmuir Isotherms for a Binary Mixture 2",
      "url": "/simulations/kinetics-reactor-design/langmuir-isotherms-for-a-binary-mixture-2",
      "children": []
    }, {
      "title": "Membrane Reactor for an Equilibrium-Limited Reaction",
      "url": "/simulations/kinetics-reactor-design/membrane-reactor-for-an-equilibrium-limited-reaction",
      "children": []
    }, {
      "title": "Minimized Volume for Reactors in Series",
      "url": "/simulations/kinetics-reactor-design/minimized-volume-for-reactors-in-series",
      "children": []
    }, {
      "title": "Multiple States in an Isothermal CSTR",
      "url": "/simulations/kinetics-reactor-design/multiple-states-in-an-isothermal-cstr",
      "children": []
    }, {
      "title": "Multiple Steady States in a CSTR",
      "url": "/simulations/kinetics-reactor-design/multiple-steady-states-in-a-cstr",
      "children": []
    }, {
      "title": "Multiple Steady States in CSTR with Heat Exchange",
      "url": "/simulations/kinetics-reactor-design/multiple-steady-states-in-cstr-with-heat-exchange",
      "children": []
    }, {
      "title": "Operating a Chemostat",
      "url": "/simulations/kinetics-reactor-design/operating-a-chemostat",
      "children": []
    }, {
      "title": "Parametric Sensitivity of PFR with Heat Exchange",
      "url": "/simulations/kinetics-reactor-design/parametric-sensitivity-of-pfr-with-heat-exchange",
      "children": []
    }, {
      "title": "Performance of a Plug Flow Reactor with Recycle",
      "url": "/simulations/kinetics-reactor-design/performance-of-a-plug-flow-reactor-with-recycle",
      "children": []
    }, {
      "title": "PFR with Heat Transfer Jacket",
      "url": "/simulations/kinetics-reactor-design/pfr-with-heat-transfer-jacket",
      "children": []
    }, {
      "title": "Pharmacokinetic Modeling",
      "url": "/simulations/kinetics-reactor-design/pharmacokinetic-modeling",
      "children": []
    }, {
      "title": "Polymerization in a Batch Reactor",
      "url": "/simulations/kinetics-reactor-design/polymerization-in-a-batch-reactor",
      "children": []
    }, {
      "title": "Pressure Drop in a PBR",
      "url": "/simulations/kinetics-reactor-design/pressure-drop-in-a-pbr",
      "children": []
    }, {
      "title": "Reaction in an Adiabatic CSTR",
      "url": "/simulations/kinetics-reactor-design/reaction-in-an-adiabatic-cstr",
      "children": []
    }, {
      "title": "Reaction in an Isothermal CSTR",
      "url": "/simulations/kinetics-reactor-design/reaction-in-an-isothermal-cstr",
      "children": []
    }, {
      "title": "Reactor Design Economics",
      "url": "/simulations/kinetics-reactor-design/reactor-design-economics",
      "children": []
    }, {
      "title": "Reactor Rate and Conversion versus Space Velocity",
      "url": "/simulations/kinetics-reactor-design/reactor-rate-and-conversion-versus-space-velocity",
      "children": []
    }, {
      "title": "Reactor with Recycle Stream",
      "url": "/simulations/kinetics-reactor-design/reactor-with-recycle-stream",
      "children": []
    }, {
      "title": "Reversible Reaction in an Adiabatic PFR",
      "url": "/simulations/kinetics-reactor-design/reversible-reaction-in-an-adiabatic-pfr",
      "children": []
    }, {
      "title": "Scale-Up of a Batch Reactor",
      "url": "/simulations/kinetics-reactor-design/scale-up-of-a-batch-reactor",
      "children": []
    }, {
      "title": "Selectivity in a Semibatch Reactor",
      "url": "/simulations/kinetics-reactor-design/selectivity-in-a-semibatch-reactor",
      "children": []
    }, {
      "title": "Sensitivity of PFR to Model Parameters",
      "url": "/simulations/kinetics-reactor-design/sensitivity-of-pfr-to-model-parameters",
      "children": []
    }, {
      "title": "Series Reactions in a Batch Reactor",
      "url": "/simulations/kinetics-reactor-design/series-reactions-in-a-batch-reactor",
      "children": []
    }, {
      "title": "Series Reactions in a Batch Reactor",
      "url": "/simulations/kinetics-reactor-design/series-reactions-in-a-batch-reactor-1",
      "children": []
    }, {
      "title": "Temperature-Programmed Desorption",
      "url": "/simulations/kinetics-reactor-design/temperature-programmed-desorption",
      "children": []
    }, {
      "title": "Variation of Temperature and Concentration versus Residence Time in Adiabatic Reactors",
      "url": "/simulations/kinetics-reactor-design/variation-of-temperature-and-concentration-versus-residence-time-in-adiabatic-reactors",
      "children": []
    }, {
      "title": "Volumetric Flow Rates in a PFR",
      "url": "/simulations/kinetics-reactor-design/volumetric-flow-rates-in-a-pfr",
      "children": []
    }]
  }, {
    "title": "Mass/Energy Balances",
    "url": "/simulations/mass-energy-balances",
    "children": [{
      "title": "Adiabatic Humidification",
      "url": "/simulations/mass-energy-balances/adiabatic-humidification",
      "children": []
    }, {
      "title": "Basic Ternary Phase Diagram",
      "url": "/simulations/mass-energy-balances/basic-ternary-phase-diagram",
      "children": []
    }, {
      "title": "Combustion Reactions in a Furnace",
      "url": "/simulations/mass-energy-balances/combustion-reactions-in-a-furnace",
      "children": []
    }, {
      "title": "Compressibility Factor Charts",
      "url": "/simulations/mass-energy-balances/compressibility-factor-charts",
      "children": []
    }, {
      "title": "Construct P-x-y Diagram for Immiscible Liquids",
      "url": "/simulations/mass-energy-balances/construct-p-x-y-diagram-for-immiscible-liquids",
      "children": []
    }, {
      "title": "Construct P-x-y Diagram for VLE",
      "url": "/simulations/mass-energy-balances/construct-p-x-y-diagram-for-vle",
      "children": []
    }, {
      "title": "Construct T-x-y Diagram for Immiscible Liquids",
      "url": "/simulations/mass-energy-balances/construct-t-x-y-diagram-for-immiscible-liquids",
      "children": []
    }, {
      "title": "Construct T-x-y Diagram for VLE",
      "url": "/simulations/mass-energy-balances/construct-t-x-y-diagram-for-vle",
      "children": []
    }, {
      "title": "DOF Analysis on a Distillation Process",
      "url": "/simulations/mass-energy-balances/dof-analysis-on-a-distillation-process",
      "children": []
    }, {
      "title": "Evaporative Crystallization with Recycle",
      "url": "/simulations/mass-energy-balances/evaporative-crystallization-with-recycle",
      "children": []
    }, {
      "title": "Flash Distillation of a Benzene, Toluene, p-Xylene Mixture",
      "url": "/simulations/mass-energy-balances/flash-distillation-of-a-benzene-toluene-p-xylene-mixture",
      "children": []
    }, {
      "title": "Gas Properties - PhET",
      "url": "/simulations/mass-energy-balances/gas-properties---phet",
      "children": []
    }, {
      "title": "Heat Balance in Freezing and Thawing Food",
      "url": "/simulations/mass-energy-balances/heat-balance-for-freezing-and-thawing-foods",
      "children": []
    }, {
      "title": "Mass Balance in the Haber Process",
      "url": "/simulations/mass-energy-balances/mass-balance-in-the-haber-process",
      "children": []
    }, {
      "title": "Mass Balances for Binary VLE",
      "url": "/simulations/mass-energy-balances/mass-balances-for-binary-vle",
      "children": []
    }, {
      "title": "Mass Balances in Evaporative Crystallization",
      "url": "/simulations/mass-energy-balances/mass-balances-in-evaporative-crystallization",
      "children": []
    }, {
      "title": "Material and Energy Balances in a Reactor with Heat Exchange",
      "url": "/simulations/mass-energy-balances/material-and-energy-balances-in-a-reactor-with-heat-exchange",
      "children": []
    }, {
      "title": "Operation of an Air Conditioner",
      "url": "/simulations/mass-energy-balances/operation-of-an-air-conditioner",
      "children": []
    }, {
      "title": "Reactor with Recycle",
      "url": "/simulations/mass-energy-balances/reactor-with-recycle",
      "children": []
    }, {
      "title": "Reading a Psychrometric Chart",
      "url": "/simulations/mass-energy-balances/reading-a-psychrometric-chart",
      "children": []
    }, {
      "title": "Solving Mass Balances on a Distillation Column",
      "url": "/simulations/mass-energy-balances/solving-mass-balances-on-a-distillation-column",
      "children": []
    }, {
      "title": "Ternary Phase Diagram with Alternate Phase Envelope",
      "url": "/simulations/mass-energy-balances/ternary-phase-diagram-with-alternate-phase-envelope",
      "children": []
    }, {
      "title": "Ternary Phase Diagram with Phase Envelope",
      "url": "/simulations/mass-energy-balances/ternary-phase-diagram-with-phase-envelope",
      "children": []
    }, {
      "title": "Visualization of Vapor-Liquid Equilibrium",
      "url": "/simulations/mass-energy-balances/visualvle",
      "children": []
    }]
  }, {
    "title": "Materials Science",
    "url": "/simulations/materials-science",
    "children": [{
      "title": "Diffusion in Solids",
      "url": "/simulations/materials-science/diffusion-in-solids",
      "children": []
    }, {
      "title": "Electrical Conductivity of a Semiconductor",
      "url": "/simulations/materials-science/electrical-conductivity-of-a-semiconductor",
      "children": []
    }, {
      "title": "Mohr's Circle and Stress Transformations",
      "url": "/simulations/materials-science/mohr-s-circle-and-stress-transformations",
      "children": []
    }, {
      "title": "Right Equilateral Triangle Phase Diagrams",
      "url": "/simulations/materials-science/right-equilateral-triangle-phase-diagrams",
      "children": []
    }, {
      "title": "Simple Crystal Structures and Miller Indices",
      "url": "/simulations/materials-science/simple-crystal-structures-and-miller-indices",
      "children": []
    }, {
      "title": "SSLE Equilibrium",
      "url": "/simulations/materials-science/ssle-equilibrium",
      "children": []
    }, {
      "title": "The 14 3D Bravais Lattices",
      "url": "/simulations/materials-science/the-14-3d-bravais-lattices",
      "children": []
    }, {
      "title": "The Photoelectric Effect",
      "url": "/simulations/materials-science/the-photoelectric-effect",
      "children": []
    }, {
      "title": "Water Contact Angle for Heterogeneous Surface",
      "url": "/simulations/materials-science/water-contact-angle-for-heterogeneous-surface",
      "children": []
    }]
  }, {
    "title": "Physical Chemistry",
    "url": "/simulations/physical-chemistry",
    "children": [{
      "title": "Atomic Interactions - PhET",
      "url": "/simulations/physical-chemistry/atomic-interactions---phet",
      "children": []
    }, {
      "title": "harmonic-oscillator",
      "url": "/simulations/physical-chemistry/harmonic-oscillator",
      "children": []
    }, {
      "title": "Infrared-Active Vibrational Modes in Water",
      "url": "/simulations/physical-chemistry/infrared-active-vibrational-modes-in-water",
      "children": []
    }, {
      "title": "maxwell-relations",
      "url": "/simulations/physical-chemistry/maxwell-relations",
      "children": []
    }, {
      "title": "Particle in a Box Simulation",
      "url": "/simulations/physical-chemistry/particle-in-a-box-1",
      "children": []
    }]
  }, {
    "title": "Process Control",
    "url": "/simulations/process-control",
    "children": [{
      "title": "First- and Second-Order Transfer Functions",
      "url": "/simulations/process-control/first-and-second-order-transfer-functions",
      "children": []
    }, {
      "title": "First-Order Transfer Functions",
      "url": "/simulations/process-control/first-order-transfer-functions",
      "children": []
    }, {
      "title": "MATLAB files",
      "url": "/simulations/process-control/matlab-files",
      "children": []
    }]
  }, {
    "title": "Separations",
    "url": "/simulations/separations",
    "children": [{
      "title": "Add a Component to a Mixture with an Azeotrope",
      "url": "/simulations/separations/add-a-component-to-a-mixture-with-an-azeotrope",
      "children": []
    }, {
      "title": "Adiabatic Flash Drum with Binary Liquid Feed",
      "url": "/simulations/separations/adiabatic-flash-drum-with-binary-liquid-feed",
      "children": []
    }, {
      "title": "Apply the Hunter-Nash Method to Liquid-Liquid Extraction",
      "url": "/simulations/separations/apply-the-hunter-nash-method-to-liquid-liquid-extraction",
      "children": []
    }, {
      "title": "Batch Distillation",
      "url": "/simulations/separations/batch-distillation",
      "children": []
    }, {
      "title": "Construct a McCabe-Thiele Diagram for Distillation",
      "url": "/simulations/separations/construct-a-mccabe-thiele-diagram-for-distillation",
      "children": []
    }, {
      "title": "Construct an X-Y Diagram for a Stripping Column",
      "url": "/simulations/separations/construct-an-x-y-diagram-for-a-stripping-column",
      "children": []
    }, {
      "title": "Construct an x-y Diagram for Flash Distillation",
      "url": "/simulations/separations/construct-an-x-y-diagram-for-flash-distillation",
      "children": []
    }, {
      "title": "Construct Single-Stage Liquid-Liquid Extraction",
      "url": "/simulations/separations/construct-single-stage-liquid-liquid-extraction",
      "children": []
    }, {
      "title": "Cryogenic Recovery of Acetone from Air",
      "url": "/simulations/separations/cryogenic-recovery-of-acetone-from-air",
      "children": []
    }, {
      "title": "DePriester Chart for Hydrocarbons",
      "url": "/simulations/separations/depriester-chart-for-hydrocarbons",
      "children": []
    }, {
      "title": "Diffusion-Controlled Drug Delivery",
      "url": "/simulations/separations/diffusion-controlled-drug-delivery",
      "children": []
    }, {
      "title": "Enriching Oxygen in Air by Cross-Flow Membrane Permeation",
      "url": "/simulations/separations/enriching-oxygen-in-air-by-cross-flow-membrane-permeation",
      "children": []
    }, {
      "title": "Feed Stages in a Distillation Column",
      "url": "/simulations/separations/feed-stages-in-a-distillation-column",
      "children": []
    }, {
      "title": "How To McCabe-Thiele Fractional Distillation",
      "url": "/simulations/separations/how-to-mccabe-thiele-fractional-distillation",
      "children": []
    }, {
      "title": "Hunter-Nash Method LLE",
      "url": "/simulations/separations/hunter-nash-method-lle",
      "children": []
    }, {
      "title": "Liquid-Liquid Extraction on a Right-Triangle Ternary Phase Diagram",
      "url": "/simulations/separations/liquid-liquid-extraction-on-a-right-triangle-ternary-phase-diagram",
      "children": []
    }, {
      "title": "McCabe-Thiele Method for Methanol/Water Separation",
      "url": "/simulations/separations/mccabe-thiele-method-for-methanol-water-separation",
      "children": []
    }, {
      "title": "Membrane Concentration Profile",
      "url": "/simulations/separations/membrane-concentration-profile",
      "children": []
    }, {
      "title": "Multiple-Effect Evaporation of Sugar Solution",
      "url": "/simulations/separations/multiple-effect-evaporation-of-sugar-solution",
      "children": []
    }, {
      "title": "Multistage Batch Distillation",
      "url": "/simulations/separations/multistage-batch-distillation",
      "children": []
    }, {
      "title": "Multistage Batch Distillation with Azeotrope",
      "url": "/simulations/separations/multistage-batch-distillation-with-azeotrope",
      "children": []
    }, {
      "title": "Operation of an Absorption Column",
      "url": "/simulations/separations/operation-of-an-absorption-column",
      "children": []
    }, {
      "title": "Reverse Osmosis",
      "url": "/simulations/separations/reverse-osmosis",
      "children": []
    }, {
      "title": "Separation of Carbon Dioxide and Methane Using Well-Mixed Gas Permeation",
      "url": "/simulations/separations/separation-of-carbon-dioxide-and-methane-using-well-mixed-gas-permeation",
      "children": []
    }, {
      "title": "Simple Batch Distillation of an Ethanol-Water Mixture",
      "url": "/simulations/separations/simple-batch-distillation-of-an-ethanol-water-mixture",
      "children": []
    }, {
      "title": "Steady-State Binary Fickian Diffusion",
      "url": "/simulations/separations/steady-state-binary-fickian-diffusion",
      "children": []
    }, {
      "title": "Stripping Column Operation",
      "url": "/simulations/separations/stripping-column-operation",
      "children": []
    }, {
      "title": "Txy and xy Diagrams for Binary VLE Flash Drum",
      "url": "/simulations/separations/txy-and-xy-diagrams-for-binary-vle-flash-drum",
      "children": []
    }, {
      "title": "Unsteady-State Interphase Diffusion",
      "url": "/simulations/separations/unsteady-state-interphase-diffusion",
      "children": []
    }]
  }, {
    "title": "simulation test page",
    "url": "/simulations/simulation-test-page",
    "children": []
  }, {
    "title": "Statistics",
    "url": "/simulations/statistics",
    "children": [{
      "title": "Aliasing (Sound)",
      "url": "/simulations/statistics/aliasing-sound",
      "children": []
    }, {
      "title": "ANOVA Visualization",
      "url": "/simulations/statistics/anova-visualization",
      "children": []
    }, {
      "title": "Binomial Distribution Via Coin Flips",
      "url": "/simulations/statistics/binomial-distribution-via-coin-flip",
      "children": []
    }, {
      "title": "Central Limit Theorem",
      "url": "/simulations/statistics/central-limit-theorem",
      "children": []
    }, {
      "title": "Comparing Standard Error of the Means",
      "url": "/simulations/statistics/comparing-standard-error-of-the-means",
      "children": []
    }, {
      "title": "Finding Probabilities for Intervals of a Normal Distribution",
      "url": "/simulations/statistics/finding-probabilities-for-intervals-of-a-normal-distribution",
      "children": []
    }, {
      "title": "How Do Confidence Intervals Work?",
      "url": "/simulations/statistics/how-do-confidence-intervals-work",
      "children": []
    }, {
      "title": "Least Squares Criteria for the Least Squares Regression Line",
      "url": "/simulations/statistics/least-squares-criteria-for-the-least-squares-regression-line",
      "children": []
    }, {
      "title": "Mean, Median, Mode",
      "url": "/simulations/statistics/mean-median-mode",
      "children": []
    }, {
      "title": "Nonlinear Transformations",
      "url": "/simulations/statistics/nonlinear-transformations",
      "children": []
    }, {
      "title": "One-sample t-Test and Confidence Interval with Dot Chart in Small Samples",
      "url": "/simulations/statistics/one-sample-t-test-and-confidence-interval-with-dot-chart-in-small-samples",
      "children": []
    }, {
      "title": "Poisson Distribution",
      "url": "/simulations/statistics/poisson-distribution",
      "children": []
    }, {
      "title": "Simple Linear Regression",
      "url": "/simulations/statistics/simple-linear-regression",
      "children": []
    }, {
      "title": "Simulated Coin Tossing Experiments and the Law of Large Numbers",
      "url": "/simulations/statistics/simulated-coin-tossing-experiments-and-the-law-of-large-numbers",
      "children": []
    }, {
      "title": "Square Wave",
      "url": "/simulations/statistics/square-wave",
      "children": []
    }, {
      "title": "Standard Normal Distribution Areas",
      "url": "/simulations/statistics/standard-normal-distribution-areas",
      "children": []
    }, {
      "title": "Statistics Associated with Normal Samples",
      "url": "/simulations/statistics/statistics-associated-with-normal-samples",
      "children": []
    }, {
      "title": "The Central Limit Theorem",
      "url": "/simulations/statistics/the-central-limit-theorem",
      "children": []
    }, {
      "title": "Visualizing R-Squared in Statistics",
      "url": "/simulations/statistics/visualizing-r-squared-in-statistics",
      "children": []
    }]
  }, {
    "title": "Thermodynamics",
    "url": "/simulations/thermodynamics",
    "children": [{
      "title": "Elliott and Lira",
      "url": "/simulations/thermodynamics/elliott-and-lira",
      "children": []
    }, {
      "title": "Thermodynamics I",
      "url": "/simulations/thermodynamics/thermo-1",
      "children": [{
        "title": "Adiabatic Compression of Pure Gases",
        "url": "/simulations/thermodynamics/thermo-1/adiabatic-compression-of-pure-gases",
        "children": []
      }, {
        "title": "Adiabatic Compression of Water in VLE",
        "url": "/simulations/thermodynamics/thermo-1/adiabatic-compression-of-water-in-vle",
        "children": []
      }, {
        "title": "Adiabatic Evaporation of Water into Vacuum",
        "url": "/simulations/thermodynamics/thermo-1/adiabatic-evaporation-of-water-into-vacuum",
        "children": []
      }, {
        "title": "Adiabatic Flame Temperature",
        "url": "/simulations/thermodynamics/thermo-1/adiabatic-flame-temperature",
        "children": []
      }, {
        "title": "Adiabatic Gas Expansion between Two Tanks",
        "url": "/simulations/thermodynamics/thermo-1/adiabatic-gas-expansion-between-two-tanks",
        "children": []
      }, {
        "title": "Arranging Balls into Boxes",
        "url": "/simulations/thermodynamics/thermo-1/arranging-balls-into-boxes",
        "children": []
      }, {
        "title": "Carnot Cycle with Irreversible Heat Transfer",
        "url": "/simulations/thermodynamics/thermo-1/carnot-cycle-with-irreversible-heat-transfer",
        "children": []
      }, {
        "title": "Chemical Potential Dependence on T and P",
        "url": "/simulations/thermodynamics/thermo-1/chemical-potential-dependence-on-t-and-p",
        "children": []
      }, {
        "title": "Circumnavigating the Critical Point",
        "url": "/simulations/thermodynamics/thermo-1/circumnavigating-the-critical-point",
        "children": []
      }, {
        "title": "Compare Clausius-Clapeyron and Antoine Equations",
        "url": "/simulations/thermodynamics/thermo-1/compare-clausius-clapeyron-and-antoine-equations",
        "children": []
      }, {
        "title": "Compare Compressors Turbines Different Efficiencies",
        "url": "/simulations/thermodynamics/thermo-1/compare-compressors-turbines-different-efficiencies",
        "children": []
      }, {
        "title": "Compressed-Gas Spray",
        "url": "/simulations/thermodynamics/thermo-1/compressed-gas-spray",
        "children": []
      }, {
        "title": "Compressible Flow through a Nozzle/Diffuser",
        "url": "/simulations/thermodynamics/thermo-1/compressible-flow-through-a-nozzle-diffuser",
        "children": []
      }, {
        "title": "Energy Balance on Pressurizing a Tank",
        "url": "/simulations/thermodynamics/thermo-1/energy-balance-on-pressurizing-a-tank",
        "children": []
      }, {
        "title": "Enthalpy-Entropy Diagram For Water",
        "url": "/simulations/thermodynamics/thermo-1/enthalpy-entropy-diagram-for-water",
        "children": []
      }, {
        "title": "Entropy Changes in Mixing Ideal Gases",
        "url": "/simulations/thermodynamics/thermo-1/entropy-changes-in-mixing-ideal-gases",
        "children": []
      }, {
        "title": "Evaporative Cooling of Water",
        "url": "/simulations/thermodynamics/thermo-1/evaporative-cooling-of-water",
        "children": []
      }, {
        "title": "Fluids in the Critical Region",
        "url": "/simulations/thermodynamics/thermo-1/fluids-in-the-critical-region",
        "children": []
      }, {
        "title": "Fluids in the Critical Region",
        "url": "/simulations/thermodynamics/thermo-1/fluids-in-the-critical-region-1",
        "children": []
      }, {
        "title": "Fugacity from EOS for Water",
        "url": "/simulations/thermodynamics/thermo-1/fugacity-from-eos-for-water",
        "children": []
      }, {
        "title": "H and S Departure Functions for Gases",
        "url": "/simulations/thermodynamics/thermo-1/h-and-s-departure-functions-for-gases",
        "children": []
      }, {
        "title": "Heating Water in a Closed Vessel",
        "url": "/simulations/thermodynamics/thermo-1/heating-water-in-a-closed-vessel",
        "children": []
      }, {
        "title": "High-Pressure Chemical Equilibrium",
        "url": "/simulations/thermodynamics/thermo-1/high-pressure-chemical-equilibrium",
        "children": []
      }, {
        "title": "Identify Reversible and Irreversible Expansion and Compression",
        "url": "/simulations/thermodynamics/thermo-1/identify-reversible-and-irreversible-expansion-and-compression",
        "children": []
      }, {
        "title": "Injecting a Liquid into an Evacuated Tank",
        "url": "/simulations/thermodynamics/thermo-1/injecting-a-liquid-into-an-evacuated-tank",
        "children": []
      }, {
        "title": "Irreversible and Reversible Temperature Equilibration",
        "url": "/simulations/thermodynamics/thermo-1/irreversible-and-reversible-temperature-equilibration",
        "children": []
      }, {
        "title": "Joule-Thomson Expansion",
        "url": "/simulations/thermodynamics/thermo-1/joule-thomson-expansion",
        "children": []
      }, {
        "title": "Material and Energy Balances in a Reactor with Heat Exchange",
        "url": "/simulations/thermodynamics/thermo-1/material-and-energy-balances-in-a-reactor-with-heat-exchange",
        "children": []
      }, {
        "title": "Ordinary Vapor Compression Cycle Refrigerant R-134a",
        "url": "/simulations/thermodynamics/thermo-1/ordinary-vapor-compression-cycle-refrigerant-r-134a",
        "children": []
      }, {
        "title": "Otto Cycle",
        "url": "/simulations/thermodynamics/thermo-1/otto-cycle",
        "children": []
      }, {
        "title": "Phase Behavior on a PV Diagram",
        "url": "/simulations/thermodynamics/thermo-1/phase-behavior-on-a-pv-diagram",
        "children": []
      }, {
        "title": "PH Diagram for Water",
        "url": "/simulations/thermodynamics/thermo-1/ph-diagram-for-water",
        "children": []
      }, {
        "title": "Pressure-Temperature Phase Diagram for Water",
        "url": "/simulations/thermodynamics/thermo-1/pressure-temperature-phase-diagram-for-water",
        "children": []
      }, {
        "title": "PV Diagram for Heating Vapor-Liquid Mixture at Constant Volume",
        "url": "/simulations/thermodynamics/thermo-1/pv-diagram-for-heating-vapor-liquid-mixture-at-constant-volume",
        "children": []
      }, {
        "title": "Rankine Cycle",
        "url": "/simulations/thermodynamics/thermo-1/rankine-cycle",
        "children": []
      }, {
        "title": "Ranque-Hilsch Vortex Tube",
        "url": "/simulations/thermodynamics/thermo-1/ranque-hilsch-vortex-tube",
        "children": []
      }, {
        "title": "Refrigeration Cycle Coefficient of Performance",
        "url": "/simulations/thermodynamics/thermo-1/refrigeration-cycle-coefficient-of-performance",
        "children": []
      }, {
        "title": "Reversible Irreversible Expansion Compression Work",
        "url": "/simulations/thermodynamics/thermo-1/reversible-irreversible-expansion-compression-work",
        "children": []
      }, {
        "title": "Simulation of a Simple Gas Pressure Model",
        "url": "/simulations/thermodynamics/thermo-1/simulation-of-a-simple-gas-pressure-model",
        "children": []
      }, {
        "title": "Single Component PV and TV Diagrams",
        "url": "/simulations/thermodynamics/thermo-1/single-component-pv-and-tv-diagrams",
        "children": []
      }, {
        "title": "Temperature Changes in an Ideal Gas",
        "url": "/simulations/thermodynamics/thermo-1/temperature-changes-in-an-ideal-gas",
        "children": []
      }, {
        "title": "Throttling High-Pressure Water",
        "url": "/simulations/thermodynamics/thermo-1/throttling-high-pressure-water",
        "children": []
      }, {
        "title": "TS Diagram for Water",
        "url": "/simulations/thermodynamics/thermo-1/ts-diagram-for-water",
        "children": []
      }]
    }, {
      "title": "Thermodynamics II",
      "url": "/simulations/thermodynamics/thermo-2",
      "children": [{
        "title": "Adding a Second Component to a Fixed-V Container",
        "url": "/simulations/thermodynamics/thermo-2/adding-a-second-component-to-a-fixed-v-container",
        "children": []
      }, {
        "title": "Adding a Second Component to a Single-Component VLE Mixture",
        "url": "/simulations/thermodynamics/thermo-2/adding-a-second-component-to-a-single-component-vle-mixture",
        "children": []
      }, {
        "title": "Adding One Component to a Binary VLE Mixture",
        "url": "/simulations/thermodynamics/thermo-2/adding-one-component-to-a-binary-vle-mixture",
        "children": []
      }, {
        "title": "Chemical Equilibrium in the Haber Process",
        "url": "/simulations/thermodynamics/thermo-2/chemical-equilibrium-in-the-haber-process",
        "children": []
      }, {
        "title": "Chemical Potential Dependence on T and P",
        "url": "/simulations/thermodynamics/thermo-2/chemical-potential-dependence-on-t-and-p",
        "children": []
      }, {
        "title": "Construct a Conversion-Temperature Diagram for a Reversible Adiabatic Reaction",
        "url": "/simulations/thermodynamics/thermo-2/construct-a-conversion-temperature-diagram-for-a-reversible-adiabatic-reaction",
        "children": []
      }, {
        "title": "Construct a P-x-y Diagram for Immiscible Liquids",
        "url": "/simulations/thermodynamics/thermo-2/construct-a-p-x-y-diagram-for-immiscible-liquids",
        "children": []
      }, {
        "title": "Construct a T-x-y Diagram for Immiscible Liquids",
        "url": "/simulations/thermodynamics/thermo-2/construct-a-t-x-y-diagram-for-immiscible-liquids",
        "children": []
      }, {
        "title": "DePriester Chart for Hydrocarbons",
        "url": "/simulations/thermodynamics/thermo-2/depriester-chart-for-hydrocarbons",
        "children": []
      }, {
        "title": "Effect of Temperature on Partial Miscibility",
        "url": "/simulations/thermodynamics/thermo-2/effect-of-temperature-on-partial-miscibility",
        "children": []
      }, {
        "title": "Fugacities in a Can of Soda",
        "url": "/simulations/thermodynamics/thermo-2/fugacities-in-a-can-of-soda",
        "children": []
      }, {
        "title": "Fugacities in an Ideal Binary Mixture",
        "url": "/simulations/thermodynamics/thermo-2/fugacities-in-an-ideal-binary-mixture",
        "children": []
      }, {
        "title": "Fugacity Dependence on Pressure in an Ideal Binary Mixture",
        "url": "/simulations/thermodynamics/thermo-2/fugacity-dependence-on-pressure-in-an-ideal-binary-mixture",
        "children": []
      }, {
        "title": "Fugacity Driving Force for Mass Transfer",
        "url": "/simulations/thermodynamics/thermo-2/fugacity-driving-force-for-mass-transfer",
        "children": []
      }, {
        "title": "Gas-Phase Chemical Equilibrium at Constant P or Constant V",
        "url": "/simulations/thermodynamics/thermo-2/gas-phase-chemical-equilibrium-at-constant-p-or-constant-v",
        "children": []
      }, {
        "title": "Gibbs Phase Rule for One- and Two-Component Systems",
        "url": "/simulations/thermodynamics/thermo-2/gibbs-phase-rule-for-one--and-two-component-systems",
        "children": []
      }, {
        "title": "Heating Water and Air in a Sealed Container",
        "url": "/simulations/thermodynamics/thermo-2/heating-water-and-air-in-a-sealed-container",
        "children": []
      }, {
        "title": "Henry's Law for Gases Dissolved in Water",
        "url": "/simulations/thermodynamics/thermo-2/henry-s-law-for-gases-dissolved-in-water",
        "children": []
      }, {
        "title": "Heterogeneous Chemical Equilibrium with Calcium Carbonate",
        "url": "/simulations/thermodynamics/thermo-2/heterogeneous-chemical-equilibrium-with-calcium-carbonate",
        "children": []
      }, {
        "title": "Immiscible Liquids on Pxy Diagram",
        "url": "/simulations/thermodynamics/thermo-2/immiscible-liquids-on-pxy-diagram",
        "children": []
      }, {
        "title": "Lever Rule Applied to the Benzene-Toluene Vapor P Diagram",
        "url": "/simulations/thermodynamics/thermo-2/lever-rule-applied-to-the-benzene-toluene-vapor-p-diagram",
        "children": []
      }, {
        "title": "Lever Rule for the Uranium-Titanium Solid-Liquid Phase Diagram",
        "url": "/simulations/thermodynamics/thermo-2/lever-rule-for-the-uranium-titanium-solid-liquid-phase-diagram",
        "children": []
      }, {
        "title": "Non-Ideal VLE Margules Equation",
        "url": "/simulations/thermodynamics/thermo-2/non-ideal-vle-margules-equation",
        "children": []
      }, {
        "title": "Osmotic Pressure",
        "url": "/simulations/thermodynamics/thermo-2/osmotic-pressure",
        "children": []
      }, {
        "title": "Partially Miscible Liquids",
        "url": "/simulations/thermodynamics/thermo-2/partially-miscible-liquids",
        "children": []
      }, {
        "title": "Partial Molar H",
        "url": "/simulations/thermodynamics/thermo-2/partial-molar-h",
        "children": []
      }, {
        "title": "Peng-Robinson EOS for Mixtures",
        "url": "/simulations/thermodynamics/thermo-2/peng-robinson-eos-for-mixtures",
        "children": []
      }, {
        "title": "Pressure-Temperature Diagram for Binary Mixture",
        "url": "/simulations/thermodynamics/thermo-2/pressure-temperature-diagram-for-binary-mixture",
        "children": []
      }, {
        "title": "P-x-y and T-x-y Diagrams for Vapor-Liquid Equilibrium (VLE)",
        "url": "/simulations/thermodynamics/thermo-2/p-x-y-and-t-x-y-diagrams-for-vapor-liquid-equilibrium-vle",
        "children": []
      }, {
        "title": "Single-Component Fugacity",
        "url": "/simulations/thermodynamics/thermo-2/single-component-fugacity",
        "children": []
      }, {
        "title": "Three Intermolecular Potential Models",
        "url": "/simulations/thermodynamics/thermo-2/three-intermolecular-potential-models",
        "children": []
      }, {
        "title": "TXY Diagram for Immiscible Liquids",
        "url": "/simulations/thermodynamics/thermo-2/txy-diagram-for-immiscible-liquids",
        "children": []
      }, {
        "title": "Vapor-Liquid Equilibrium Diagram for Non-Ideal Mixtures",
        "url": "/simulations/thermodynamics/thermo-2/vapor-liquid-equilibrium-diagram-for-non-ideal-mixtures",
        "children": []
      }, {
        "title": "Vapor Pressure of Binary Solutions",
        "url": "/simulations/thermodynamics/thermo-2/vapor-pressure-of-binary-solutions",
        "children": []
      }, {
        "title": "VLE Diagram for Non-Ideal Mixture",
        "url": "/simulations/thermodynamics/thermo-2/vle-diagram-for-non-ideal-mixtures",
        "children": []
      }, {
        "title": "VLLE",
        "url": "/simulations/thermodynamics/thermo-2/vlle",
        "children": []
      }]
    }]
  }]
}, {
  "title": "Student Resources",
  "url": "/student-resources",
  "children": [{
    "title": "Chemical Engineering AppSuite HD",
    "url": "/student-resources/chemeapps",
    "children": []
  }, {
    "title": "Excel Files",
    "url": "/student-resources/excel-files",
    "children": []
  }, {
    "title": "How to Study/How to Learn",
    "url": "/student-resources/how-to-study-resources",
    "children": []
  }, {
    "title": "Interactive Module First Law Closed Systems",
    "url": "/student-resources/interactive-module-first-law-closed-systems",
    "children": [{
      "title": "Interactive Module First Law Closed Systems ConcepTests",
      "url": "/student-resources/interactive-module-first-law-closed-systems/interactive-module-first-law-closed-systems-conceptests",
      "children": []
    }, {
      "title": "Interactive Module First Law Closed Systems Intro",
      "url": "/student-resources/interactive-module-first-law-closed-systems/interactive-module-first-law-closed-systems-intro",
      "children": []
    }, {
      "title": "Interactive Module First Law Closed Systems Problems",
      "url": "/student-resources/interactive-module-first-law-closed-systems/interactive-module-first-law-closed-systems-problems",
      "children": []
    }, {
      "title": "Interactive Module First Law Closed Systems Screencasts",
      "url": "/student-resources/interactive-module-first-law-closed-systems/interactive-module-first-law-closed-systems-screencasts",
      "children": []
    }, {
      "title": "Interactive Module First Law Closed Systems Second ConcepTests",
      "url": "/student-resources/interactive-module-first-law-closed-systems/interactive-module-first-law-closed-systems-second-conceptests",
      "children": []
    }, {
      "title": "Interactive Module First Law Closed Systems Simulations",
      "url": "/student-resources/interactive-module-first-law-closed-systems/interactive-module-first-law-closed-systems-simulations",
      "children": []
    }, {
      "title": "Interactive Module First Law Closed Systems Summary",
      "url": "/student-resources/interactive-module-first-law-closed-systems/interactive-module-first-law-closed-systems-summary",
      "children": []
    }]
  }, {
    "title": "Interactive Module Flash Separations",
    "url": "/student-resources/interactive-module-flash-separations",
    "children": [{
      "title": "Interactive Module Flash Separations ConcepTests",
      "url": "/student-resources/interactive-module-flash-separations/interactive-module-flash-separations-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Flash Separations Intro",
      "url": "/student-resources/interactive-module-flash-separations/interactive-module-flash-separations-intro",
      "children": []
    }, {
      "title": "Interactive Module Flash Separations Problems",
      "url": "/student-resources/interactive-module-flash-separations/interactive-module-flash-separations-problems",
      "children": []
    }, {
      "title": "Interactive Module Flash Separations Screencasts",
      "url": "/student-resources/interactive-module-flash-separations/interactive-module-flash-separations-screencasts",
      "children": []
    }, {
      "title": "Interactive Module Flash Separations Second ConcepTests",
      "url": "/student-resources/interactive-module-flash-separations/interactive-module-flash-separations-second-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Flash Separations Simulations",
      "url": "/student-resources/interactive-module-flash-separations/interactive-module-flash-separations-simulations",
      "children": []
    }, {
      "title": "Interactive Module Flash Separations Summary",
      "url": "/student-resources/interactive-module-flash-separations/interactive-module-flash-separations-summary",
      "children": []
    }]
  }, {
    "title": "Interactive Module Fugacities of Mixtures",
    "url": "/student-resources/interactive-module-fugacities-of-mixtures",
    "children": [{
      "title": "Interactive Module Fugacities of Mixtures ConcepTest",
      "url": "/student-resources/interactive-module-fugacities-of-mixtures/interactive-module-fugacities-of-mixtures-conceptest",
      "children": []
    }, {
      "title": "Interactive Module Fugacities of Mixtures Example Problems",
      "url": "/student-resources/interactive-module-fugacities-of-mixtures/interactive-module-fugacities-of-mixtures-example-problems",
      "children": []
    }, {
      "title": "Interactive Module Fugacities of Mixtures Intro",
      "url": "/student-resources/interactive-module-fugacities-of-mixtures/interactive-module-fugacities-of-mixtures-intro",
      "children": []
    }, {
      "title": "Interactive Module Fugacities of Mixtures Screencast",
      "url": "/student-resources/interactive-module-fugacities-of-mixtures/interactive-module-fugacities-of-mixtures-screencast",
      "children": []
    }, {
      "title": "Interactive Module Fugacities of Mixtures Second ConcepTest",
      "url": "/student-resources/interactive-module-fugacities-of-mixtures/interactive-module-fugacities-of-mixtures-second-conceptest",
      "children": []
    }, {
      "title": "Interactive Module Fugacities of Mixtures Simulations",
      "url": "/student-resources/interactive-module-fugacities-of-mixtures/interactive-module-fugacities-of-mixtures-simulations",
      "children": []
    }, {
      "title": "Interactive Module Fugacities of Mixtures Summary",
      "url": "/student-resources/interactive-module-fugacities-of-mixtures/interactive-module-fugacities-of-mixtures-summary",
      "children": []
    }]
  }, {
    "title": "Interactive Module Fugacity Single Component",
    "url": "/student-resources/interactive-module-fugacity-single-component",
    "children": [{
      "title": "Interactive Module Fugacity Single Component ConcepTests",
      "url": "/student-resources/interactive-module-fugacity-single-component/interactive-module-fugacity-single-component-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Fugacity Single Component Example Problems",
      "url": "/student-resources/interactive-module-fugacity-single-component/interactive-module-fugacity-single-component-example-problems",
      "children": []
    }, {
      "title": "Interactive Module Fugacity Single Component Intro",
      "url": "/student-resources/interactive-module-fugacity-single-component/interactive-module-fugacity-single-component-intro",
      "children": []
    }, {
      "title": "Interactive Module Fugacity Single Component Screencast",
      "url": "/student-resources/interactive-module-fugacity-single-component/interactive-module-fugacity-single-component-screencast",
      "children": []
    }, {
      "title": "Interactive Module Fugacity Single Component Second ConcepTests",
      "url": "/student-resources/interactive-module-fugacity-single-component/interactive-module-fugacity-single-component-second-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Fugacity Single Component Simulations",
      "url": "/student-resources/interactive-module-fugacity-single-component/interactive-module-fugacity-single-component-simulations",
      "children": []
    }, {
      "title": "Interactive Module Fugacity Single Component Summary",
      "url": "/student-resources/interactive-module-fugacity-single-component/interactive-module-fugacity-single-component-summary",
      "children": []
    }]
  }, {
    "title": "Interactive Module Immiscible Liquid Phase Diagrams",
    "url": "/student-resources/interactive-module-immiscible-liquid-phase-diagrams",
    "children": [{
      "title": "Interactive Module Immiscible Liquids ConcepTests",
      "url": "/student-resources/interactive-module-immiscible-liquid-phase-diagrams/interactive-module-immiscible-liquids-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Immiscible Liquids Intro",
      "url": "/student-resources/interactive-module-immiscible-liquid-phase-diagrams/interactive-module-immiscible-liquids-intro",
      "children": []
    }, {
      "title": "Interactive Module Immiscible Liquids Problems",
      "url": "/student-resources/interactive-module-immiscible-liquid-phase-diagrams/interactive-module-immiscible-liquids-problems",
      "children": []
    }, {
      "title": "Interactive Module Immiscible Liquid Quiz Yourself",
      "url": "/student-resources/interactive-module-immiscible-liquid-phase-diagrams/interactive-module-immiscible-liquids-quiz-yourself",
      "children": []
    }, {
      "title": "Interactive Module Immiscible Liquids Screencast",
      "url": "/student-resources/interactive-module-immiscible-liquid-phase-diagrams/interactive-module-immiscible-liquids-screencast",
      "children": []
    }, {
      "title": "Interactive Module Immiscible Liquids Second ConcepTests",
      "url": "/student-resources/interactive-module-immiscible-liquid-phase-diagrams/interactive-module-immiscible-liquids-second-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Immiscible Liquids Simulations",
      "url": "/student-resources/interactive-module-immiscible-liquid-phase-diagrams/interactive-module-immiscible-liquids-simulations",
      "children": []
    }, {
      "title": "Interactive Module Immiscible Liquids Summary",
      "url": "/student-resources/interactive-module-immiscible-liquid-phase-diagrams/interactive-module-immiscible-liquids-summary",
      "children": []
    }]
  }, {
    "title": "Interactive Module Non Ideal VLE",
    "url": "/student-resources/interactive-module-non-ideal-vle",
    "children": [{
      "title": "Interactive Module Non Ideal Simulations",
      "url": "/student-resources/interactive-module-non-ideal-vle/interactive-module-non-ideal-simulations",
      "children": []
    }, {
      "title": "Interactive Module Non Ideal VLE 2nd ConcepTests",
      "url": "/student-resources/interactive-module-non-ideal-vle/interactive-module-non-ideal-vle-2nd-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Non Ideal VLE ConcepTests",
      "url": "/student-resources/interactive-module-non-ideal-vle/interactive-module-non-ideal-vle-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Non Ideal VLE Example Problems",
      "url": "/student-resources/interactive-module-non-ideal-vle/interactive-module-non-ideal-vle-example-problems",
      "children": []
    }, {
      "title": "Interactive Module Non Ideal VLE Intro",
      "url": "/student-resources/interactive-module-non-ideal-vle/interactive-module-non-ideal-vle-intro",
      "children": []
    }, {
      "title": "Interactive Module Non Ideal VLE Screencast",
      "url": "/student-resources/interactive-module-non-ideal-vle/interactive-module-non-ideal-vle-screencast",
      "children": []
    }, {
      "title": "Interactive Module Non Ideal VLE Summary",
      "url": "/student-resources/interactive-module-non-ideal-vle/interactive-module-non-ideal-vle-summary",
      "children": []
    }]
  }, {
    "title": "Interactive Module Phase Diagrams of Partially-Miscible Liquids",
    "url": "/student-resources/interactive-module-phase-diagrams-of-partially-miscible-liquids",
    "children": [{
      "title": "Phase Diagrams of Partially-Miscible Liquids ConcepTests",
      "url": "/student-resources/interactive-module-phase-diagrams-of-partially-miscible-liquids/phase-diagrams-of-partially-miscible-liquids-conceptests",
      "children": []
    }, {
      "title": "Phase Diagrams of Partially-Miscible Liquids Example Problems",
      "url": "/student-resources/interactive-module-phase-diagrams-of-partially-miscible-liquids/phase-diagrams-of-partially-miscible-liquids-example-problems",
      "children": []
    }, {
      "title": "Phase Diagrams of Partially-Miscible Liquids Intro",
      "url": "/student-resources/interactive-module-phase-diagrams-of-partially-miscible-liquids/phase-diagrams-of-partially-miscible-liquids-intro",
      "children": []
    }, {
      "title": "Phase Diagrams of Partially-Miscible Liquids Screencasts",
      "url": "/student-resources/interactive-module-phase-diagrams-of-partially-miscible-liquids/phase-diagrams-of-partially-miscible-liquids-screencasts",
      "children": []
    }, {
      "title": "Phase Diagrams of Partially-Miscible Liquids Second ConcepTests",
      "url": "/student-resources/interactive-module-phase-diagrams-of-partially-miscible-liquids/phase-diagrams-of-partially-miscible-liquids-second-conceptests",
      "children": []
    }, {
      "title": "Phase Diagrams of Partially-Miscible Liquids Simulations",
      "url": "/student-resources/interactive-module-phase-diagrams-of-partially-miscible-liquids/phase-diagrams-of-partially-miscible-liquids-simulations",
      "children": []
    }, {
      "title": "Phase Diagrams of Partially-Miscible Liquids Summary",
      "url": "/student-resources/interactive-module-phase-diagrams-of-partially-miscible-liquids/phase-diagrams-of-partially-miscible-liquids-summary",
      "children": []
    }]
  }, {
    "title": "Interactive Module Reversible and Irreversible Expansion/Compression Processes",
    "url": "/student-resources/interactive-module-reversible-and-irreversible-expansion-compression-processes",
    "children": [{
      "title": "Interactive Module Reversible/Irreversible Expansion/Compression Processes ConcepTests",
      "url": "/student-resources/interactive-module-reversible-and-irreversible-expansion-compression-processes/interactive-module-reversibleirreversible-expansioncompression-processes-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Reversible/Irreversible Expansion/Compression Processes Intro",
      "url": "/student-resources/interactive-module-reversible-and-irreversible-expansion-compression-processes/interactive-module-reversible-irreversible-expansion-compression-processes-intro",
      "children": []
    }, {
      "title": "Interactive Module Reversible/Irreversible Expansion/Compression Processes Problems",
      "url": "/student-resources/interactive-module-reversible-and-irreversible-expansion-compression-processes/interactive-module-reversibleirreversible-expansioncompression-processes-problems",
      "children": []
    }, {
      "title": "Interactive Module Reversible/Irreversible Expansion/Compression Processes Screencast",
      "url": "/student-resources/interactive-module-reversible-and-irreversible-expansion-compression-processes/interactive-module-reversibleirreversible-expansioncompression-processes-screencast",
      "children": []
    }, {
      "title": "Interactive Module Reversible/Irreversible Expansion/Compression Processes Second ConcepTests",
      "url": "/student-resources/interactive-module-reversible-and-irreversible-expansion-compression-processes/interactive-module-reversibleirreversible-expansioncompression-processes-second-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Reversible/Irreversible Expansion/Compression Processes Simulations",
      "url": "/student-resources/interactive-module-reversible-and-irreversible-expansion-compression-processes/interactive-module-reversibleirreversible-expansioncompression-processes-simulations",
      "children": []
    }, {
      "title": "Interactive Module Reversible/Irreversible Expansion/Compression Processes Summary",
      "url": "/student-resources/interactive-module-reversible-and-irreversible-expansion-compression-processes/interactive-module-reversibleirreversible-expansioncompression-processes-summary",
      "children": []
    }]
  }, {
    "title": "Interactive Module Single Component Phase Diagrams",
    "url": "/student-resources/interactive-module-single-component-phase-diagrams",
    "children": [{
      "title": "Interactive Module Single Component Phase Diagrams ConcepTests",
      "url": "/student-resources/interactive-module-single-component-phase-diagrams/interactive-module-single-component-phase-diagrams-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Single Component Phase Diagrams Intro",
      "url": "/student-resources/interactive-module-single-component-phase-diagrams/interactive-module-single-component-phase-diagrams-intro",
      "children": []
    }, {
      "title": "Interactive Module Single Component Phase Diagrams Problems",
      "url": "/student-resources/interactive-module-single-component-phase-diagrams/interactive-module-single-component-phase-diagrams-problems",
      "children": []
    }, {
      "title": "Interactive Module Single Component Phase Diagrams Screencasts",
      "url": "/student-resources/interactive-module-single-component-phase-diagrams/interactive-module-single-component-phase-diagrams-screencasts",
      "children": []
    }, {
      "title": "Interactive Module Single Component Phase Diagrams Second ConcepTests",
      "url": "/student-resources/interactive-module-single-component-phase-diagrams/interactive-module-single-component-phase-diagrams-second-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Single Component Phase Diagrams Simulations",
      "url": "/student-resources/interactive-module-single-component-phase-diagrams/interactive-module-single-component-phase-diagrams-simulations",
      "children": []
    }, {
      "title": "Interactive Module Single Component Phase Diagrams Summary",
      "url": "/student-resources/interactive-module-single-component-phase-diagrams/interactive-module-single-component-phase-diagrams-summary",
      "children": []
    }]
  }, {
    "title": "Interactive Module: Raoult's Law and Vapor-Liquid Equilibrium",
    "url": "/student-resources/interactive-module-raoult-s-law-and-vapor-liquid-equilibrium",
    "children": [{
      "title": "Interactive Module Raoult's Law ConcepTests",
      "url": "/student-resources/interactive-module-raoult-s-law-and-vapor-liquid-equilibrium/interactive-module-raoult-s-law-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Raoult's Law Example Problems",
      "url": "/student-resources/interactive-module-raoult-s-law-and-vapor-liquid-equilibrium/interactive-module-raoult-s-law-example-problems",
      "children": []
    }, {
      "title": "Interactive Module Raoult's Law Intro",
      "url": "/student-resources/interactive-module-raoult-s-law-and-vapor-liquid-equilibrium/interactive-module-raoult-s-law-intro",
      "children": []
    }, {
      "title": "Interactive Module Raoult's Law Quiz Yourself",
      "url": "/student-resources/interactive-module-raoult-s-law-and-vapor-liquid-equilibrium/interactive-module-raoult-s-law-quiz-yourself",
      "children": []
    }, {
      "title": "Interactive Module Raoult's Law Screencast",
      "url": "/student-resources/interactive-module-raoult-s-law-and-vapor-liquid-equilibrium/interactive-module-raoult-s-law-screencast",
      "children": []
    }, {
      "title": "Interactive Module Raoult's Law Second ConcepTests",
      "url": "/student-resources/interactive-module-raoult-s-law-and-vapor-liquid-equilibrium/interactive-module-raoult-s-law-second-conceptests",
      "children": []
    }, {
      "title": "Interactive Module Raoult's Law Simulations",
      "url": "/student-resources/interactive-module-raoult-s-law-and-vapor-liquid-equilibrium/interactive-module-raoult-s-law-simulations",
      "children": []
    }, {
      "title": "Interactive Module Raoult's Law Summary",
      "url": "/student-resources/interactive-module-raoult-s-law-and-vapor-liquid-equilibrium/interactive-module-raoult-s-law-summary",
      "children": []
    }]
  }, {
    "title": "POLYMATH",
    "url": "/student-resources/polymath",
    "children": [{
      "title": "Polymath Files",
      "url": "/student-resources/polymath/polymath-files",
      "children": []
    }]
  }, {
    "title": "Units, Dimensional Analysis, and Conversion Factors",
    "url": "/student-resources/units-dimensional-analysis-and-conversion-factors",
    "children": []
  }]
}, {
  "title": "Virtual Labs",
  "url": "/virtual-laboratories",
  "children": []
}];

let csvfile = " , , , , url\n";

jsonMap.forEach(firstlevel => {
  csvfile += `${firstlevel.title}, , , , ${firstlevel.url}\n`;
  firstlevel.children.forEach(secondlevel => {
    csvfile += ` , ${secondlevel.title}, , , ${secondlevel.url}\n`;
    secondlevel.children.forEach(thirdlevel => {
      csvfile += ` , , ${thirdlevel.title}, , ${thirdlevel.url}\n`;
      thirdlevel.children.forEach(fourthlevel => {
        csvfile += ` , , , ${fourthlevel.title}, ${fourthlevel.url}\n`
      })
    })
  })
});

fs.writeFile("sitemap.csv", csvfile, function (err) {
  if (err) return console.log(err);
  console.log('success');
});
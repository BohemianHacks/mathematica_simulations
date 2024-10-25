fs = require('fs');

const items = [{
  "course": "Chemistry",
  "title": "Assigning Oxidation States",
  "url": "https://www.youtube.com/watch?v=YWKONQyPAso"
}, {
  "course": "Chemistry",
  "title": "Formal Charge",
  "url": "https://www.youtube.com/watch?v=_wYtocFdgGc"
}, {
  "course": "Chemistry",
  "title": "Mass Composition from Molar Composition",
  "url": "https://www.youtube.com/watch?v=S4Jzn4Iyc6k"
}, {
  "course": "Chemistry",
  "title": "Acid Dissociation Constant",
  "url": "https://www.youtube.com/watch?v=GhdDP6xe9eo"
}, {
  "course": "Chemistry",
  "title": "Balance Redox Reaction: Acidic Solution",
  "url": "https://www.youtube.com/watch?v=EE8fjXiX-Lc"
}, {
  "course": "Chemistry",
  "title": "Hydrogen Ion and Hydroxide Ion Concentrations",
  "url": "https://www.youtube.com/watch?v=GqU2-CTCE8g"
}, {
  "course": "Chemistry",
  "title": "Oxidation Number",
  "url": "https://www.youtube.com/watch?v=OT9SxW8lsBg"
}, {
  "course": "Chemistry",
  "title": "Oxidizing and Reducing Agents",
  "url": "https://www.youtube.com/watch?v=142KSemCU0k"
}, {
  "course": "Chemistry",
  "title": "pH of a Weak Acid",
  "url": "https://www.youtube.com/watch?v=jpkFUZ0Y5hY"
}, {
  "course": "Chemistry",
  "title": "Titrate Base with Acid",
  "url": "https://www.youtube.com/watch?v=h-RIXX9UnfM"
}, {
  "course": "Engineering Computing",
  "title": "Introduction to Aspen Plus: Choosing a Property Method",
  "url": "https://www.youtube.com/watch?v=ADbd3Cff_XM"
}, {
  "course": "Engineering Mathematics",
  "title": "Euler Method for ODEs",
  "url": "https://www.youtube.com/watch?v=ORvDlbanMJ8"
}, {
  "course": "Engineering Mathematics",
  "title": "Runge-Kutta Method Introduction",
  "url": "https://www.youtube.com/watch?v=kUcc8vAgoQ0"
}, {
  "course": "Fluid Mechanics",
  "title": "Characteristics of a Fluid",
  "url": "https://www.youtube.com/watch?v=-1DVqWmZ9tU"
}, {
  "course": "Fluid Mechanics",
  "title": "Dimensionless Groups (Reynolds Number Example)",
  "url": "https://www.youtube.com/watch?v=lMVvOKH-dyY"
}, {
  "course": "Fluid Mechanics",
  "title": "Introduction to Viscosity",
  "url": "https://www.youtube.com/watch?v=swJQ42Q_Ou4"
}, {
  "course": "Fluid Mechanics",
  "title": "Non-Newtonian Fluids Part 1",
  "url": "https://www.youtube.com/watch?v=vdCgs4HtPx4"
}, {
  "course": "Fluid Mechanics",
  "title": "Non-Newtonian Fluids Part 2",
  "url": "https://www.youtube.com/watch?v=ZmI21Be76zs"
}, {
  "course": "Fluid Mechanics",
  "title": "Non-Newtonian Fluids Part 3",
  "url": "https://www.youtube.com/watch?v=SVJF7mAj2Dw"
}, {
  "course": "Fluid Mechanics",
  "title": "Non-Newtonian Fluids Part4",
  "url": "https://www.youtube.com/watch?v=L8df2aYX6Dc"
}, {
  "course": "Fluid Mechanics",
  "title": "Surface Tension Part 1",
  "url": "https://www.youtube.com/watch?v=YdLeLvNfE-w"
}, {
  "course": "Fluid Mechanics",
  "title": "Viscosity of Fluid from Shear Force",
  "url": "https://www.youtube.com/watch?v=RpV6kjrKMYI"
}, {
  "course": "Fluid Mechanics",
  "title": "What is a Fluid?",
  "url": "https://www.youtube.com/watch?v=JHwlWDhYuJQ"
}, {
  "course": "Fluid Mechanics",
  "title": "Fluid Pressure vs. Elevation (Incompressible vs. Compressible Cases)",
  "url": "https://www.youtube.com/watch?v=n2IG1PyIS0M"
}, {
  "course": "Fluid Mechanics",
  "title": "Hydrostatic Pressure Calculations",
  "url": "https://www.youtube.com/watch?v=I0l_vOBczp0"
}, {
  "course": "Fluid Mechanics",
  "title": "Force Balance on Inclined Manometer",
  "url": "https://www.youtube.com/watch?v=wHGUJTSMjOo"
}, {
  "course": "Fluid Mechanics",
  "title": "Air Flow Through a Constriction",
  "url": "https://www.youtube.com/watch?v=NvrVKHVUcb0"
}, {
  "course": "Fluid Mechanics",
  "title": "Draining a Cylindrical Tank",
  "url": "https://www.youtube.com/watch?v=oIg2SxjF_Mg"
}, {
  "course": "Fluid Mechanics",
  "title": "Flow Exiting a Tank (Bernoulli)",
  "url": "https://www.youtube.com/watch?v=lGIp5Et98vY"
}, {
  "course": "Fluid Mechanics",
  "title": "Simple Bernoulli Equation Example",
  "url": "https://www.youtube.com/watch?v=RBrzlpfRk7w"
}, {
  "course": "Fluid Mechanics",
  "title": "Venturi Effect on Blood Flow (Interactive)",
  "url": "https://www.youtube.com/watch?v=qCynw9u4nNI"
}, {
  "course": "Fluid Mechanics",
  "title": "Venturi Meter (Interactive)",
  "url": "https://www.youtube.com/watch?v=Qb51gXzlZ-0"
}, {
  "course": "Fluid Mechanics",
  "title": "Laminar Flow between Parallel Plates (Navier Stokes)",
  "url": "https://www.youtube.com/watch?v=Cj8-vu2zsQI"
}, {
  "course": "Fluid Mechanics",
  "title": "Shear Stress between Parallel Plates",
  "url": "https://www.youtube.com/watch?v=oe-jAK5i5dw"
}, {
  "course": "Fluid Mechanics",
  "title": "Pipe Flow Introduction",
  "url": "https://www.youtube.com/watch?v=5BH4iSTv16Y"
}, {
  "course": "Fluid Mechanics",
  "title": "Pipe Flow: Determining Power",
  "url": "https://www.youtube.com/watch?v=ZTCc88D2HAc"
}, {
  "course": "Fluid Mechanics",
  "title": "Pressure Drop as a Function of Pipe Length (Interactive)",
  "url": "https://www.youtube.com/watch?v=ei6w2i0wQgU"
}, {
  "course": "Fluid Mechanics",
  "title": "Pressure Drop in a Pipe (Laminar Flow)",
  "url": "https://www.youtube.com/watch?v=rKXv6dGAllM"
}, {
  "course": "Fluid Mechanics",
  "title": "Pressure Drop in Pipe with Losses (Determine Pressure Drop)",
  "url": "https://www.youtube.com/watch?v=kJlJoAKveJA"
}, {
  "course": "Fluid Mechanics",
  "title": "Turbulent Flow (Interactive)",
  "url": "https://www.youtube.com/watch?v=6JtQm0s3lkM"
}, {
  "course": "Fluid Mechanics",
  "title": "Using a Moody Chart",
  "url": "https://www.youtube.com/watch?v=5glOutYffeM"
}, {
  "course": "Fluid Mechanics",
  "title": "Volumetric Flow Rate for Laminar Pipe Flow",
  "url": "https://www.youtube.com/watch?v=o4cyptbQucw"
}, {
  "course": "Fluid Mechanics",
  "title": "Shear Stress vs. Rate of Shearing Strain (Interactive)",
  "url": "https://www.youtube.com/watch?v=F0mq66mmKZo"
}, {
  "course": "Fluid Mechanics",
  "title": "Scaling Analysis",
  "url": "https://www.youtube.com/watch?v=wOfmvoBNHZU"
}, {
  "course": "Fluid Mechanics",
  "title": "Utility of Dimensionless Parameters",
  "url": "https://www.youtube.com/watch?v=aQsXHBlIBRk"
}, {
  "course": "Heat Transfer",
  "title": "Boundary Conditions",
  "url": "https://www.youtube.com/watch?v=_F09zV0n22o"
}, {
  "course": "Heat Transfer",
  "title": "Conduction Equation Derivation",
  "url": "https://www.youtube.com/watch?v=XPZ5SD07eVc"
}, {
  "course": "Heat Transfer",
  "title": "Surface Temperature for a Cylindrical Pipe",
  "url": "https://www.youtube.com/watch?v=YAJbZKrPHsM"
}, {
  "course": "Heat Transfer",
  "title": "Rod Center-line Temperature",
  "url": "https://www.youtube.com/watch?v=EmhGUVnzxzk"
}, {
  "course": "Heat Transfer",
  "title": "Local and Average Heat Transfer Coefficients",
  "url": "https://www.youtube.com/watch?v=I0sRaDawarU"
}, {
  "course": "Heat Transfer",
  "title": "Overall Heat Transfer Coefficient: Rectangular Coordinates",
  "url": "https://www.youtube.com/watch?v=d8y-Xmabdys"
}, {
  "course": "Heat Transfer",
  "title": "Solving Convection Problems",
  "url": "https://www.youtube.com/watch?v=Rqw3I5Wg_AQ"
}, {
  "course": "Heat Transfer",
  "title": "Heat Generation in a Pipe",
  "url": "https://www.youtube.com/watch?v=7D8n-lLIV24"
}, {
  "course": "Heat Transfer",
  "title": "Log Mean TemperatureDifference",
  "url": "https://www.youtube.com/watch?v=AivvyYrPvtM"
}, {
  "course": "Heat Transfer",
  "title": "Heat Exchanger: Mass Flow Rate",
  "url": "https://www.youtube.com/watch?v=2I5IhwKnhZI"
}, {
  "course": "Heat Transfer",
  "title": "NTU Effectiveness: Counter-Flow Heat Exchanger",
  "url": "https://www.youtube.com/watch?v=_FH-vG5N6gM"
}, {
  "course": "Heat Transfer",
  "title": "Sizing a Heat Exchanger: Parallel Flow",
  "url": "https://www.youtube.com/watch?v=ezeRKqiDGlA"
}, {
  "course": "Heat Transfer",
  "title": "Net Radiative Heat Transfer Rate from a Surface",
  "url": "https://www.youtube.com/watch?v=GF1mV96KlkI"
}, {
  "course": "Heat Transfer",
  "title": "Properties of Radiative Heat Transfer",
  "url": "https://www.youtube.com/watch?v=epioKYRRpPI"
}, {
  "course": "Heat Transfer",
  "title": "Radiation Exchange Between Surfaces",
  "url": "https://www.youtube.com/watch?v=-Hk6iPb4yfM"
}, {
  "course": "Heat Transfer",
  "title": "View Factors",
  "url": "https://www.youtube.com/watch?v=UIfRBB49MC4"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Batch Reactor Overview",
  "url": "https://www.youtube.com/watch?v=_s5csM17Bxg"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Batch Reactor with Reversible Reaction",
  "url": "https://www.youtube.com/watch?v=Z_Ltf60vxz8"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Semibatch Reactor Overview",
  "url": "https://www.youtube.com/watch?v=JuwVGUZZswI"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "CSTR Overview",
  "url": "https://www.youtube.com/watch?v=8jO6CWJXF3I"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Plug Flow Reactor Overview",
  "url": "https://www.youtube.com/watch?v=AOxqN18sA04"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Comparing Reactors in Series",
  "url": "https://www.youtube.com/watch?v=VTBeZxUsCf8"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Activation Energy & Arrhenius Relationship",
  "url": "https://www.youtube.com/watch?v=Yh9XdLJcTi4"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Chemical Equilibrium: Effect of an Inert",
  "url": "https://www.youtube.com/watch?v=aIrWKsZlkv0"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Steady-State Approximation",
  "url": "https://www.youtube.com/watch?v=lcy9fpgfB_s"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Steady-State Approximation vs. Rate Determining Step",
  "url": "https://www.youtube.com/watch?v=p5PDmWDgWEo"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Catalytic Selectivity and Equilibrium ",
  "url": "https://www.youtube.com/watch?v=pJJZMcAo44g"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Diffusion and Bulk Flow for Catalytic Reaction",
  "url": "https://www.youtube.com/watch?v=8HwlMqXfQcE"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Diffusion andReaction in a Cylindrical Porous Catalyst",
  "url": "https://www.youtube.com/watch?v=v7CMXuKrJC8"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Michaelis-Menten Introduction (BIO)",
  "url": "https://www.youtube.com/watch?v=xf4GvxiUh4I"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Michaelis-Menten: Competitive Inhibition(BIO)",
  "url": "https://www.youtube.com/watch?v=DJAkaUmfRWM"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Reaction Rate Explanation",
  "url": "https://www.youtube.com/watch?v=DGNw4S7MtZs"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Relationship Between the Equilibrium Constants",
  "url": "https://www.youtube.com/watch?v=u_dOZS1wo-k"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Determining Rate Order",
  "url": "https://www.youtube.com/watch?v=QYn5ce5VNgA"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Parallel Reactions in a Batch Reactor",
  "url": "https://www.youtube.com/watch?v=ddLABzbxNCs"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Series Reaction in a Batch Reactor",
  "url": "https://www.youtube.com/watch?v=sI5Zf8eUuAk"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Conversion in a PFR vs. CSTR ",
  "url": "https://www.youtube.com/watch?v=MUYHHxllK8k"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Conversion: PFR vs. CSTR ",
  "url": "https://www.youtube.com/watch?v=q06XOQXfG1I"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Langmuir-Hinshelwood Mechanism ",
  "url": "https://www.youtube.com/watch?v=Qfie3dTnyIQ"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Selectivity: Isothermal vs. Adiabatic",
  "url": "https://www.youtube.com/watch?v=tOS9SnR4L9s"
}, {
  "course": "Kinetics and Reactor Design",
  "title": "Selectivity: PFR vs. CSTR ",
  "url": "https://www.youtube.com/watch?v=7uPSjLyTy6o"
}, {
  "course": "Material and Energy Balances",
  "title": "General Balance for Material Balances",
  "url": "https://www.youtube.com/watch?v=10qbOTikL1k"
}, {
  "course": "Material and Energy Balances",
  "title": "General Mass Balance on Single Tank",
  "url": "https://www.youtube.com/watch?v=57msPMfYtyw"
}, {
  "course": "Material and Energy Balances",
  "title": "Material Balance Problem Approach",
  "url": "https://www.youtube.com/watch?v=UGVEtzgR0lw"
}, {
  "course": "Material and Energy Balances",
  "title": "Water Vapor Adsorber Material Balance",
  "url": "https://www.youtube.com/watch?v=x5Rigo3XSdo"
}, {
  "course": "Material and Energy Balances",
  "title": "Analysis of a Split Point",
  "url": "https://www.youtube.com/watch?v=W0Mpk8UwcD0"
}, {
  "course": "Material and Energy Balances",
  "title": "Crystallizer Material Balance with Recycle",
  "url": "https://www.youtube.com/watch?v=Dnfgc4_OFhI"
}, {
  "course": "Material and Energy Balances",
  "title": "Multiple Unit Material Balance/Recycle - Decaf Coffee",
  "url": "https://www.youtube.com/watch?v=tJSof5ZVrRY"
}, {
  "course": "Material and Energy Balances",
  "title": "Reactor with Recycle",
  "url": "https://www.youtube.com/watch?v=Qb_q4zSA2KQ"
}, {
  "course": "Material and Energy Balances",
  "title": "Single Reaction With Recycle",
  "url": "https://www.youtube.com/watch?v=wR7pyO3HZW0"
}, {
  "course": "Material and Energy Balances",
  "title": "Gas Expansion from a Tank",
  "url": "https://www.youtube.com/watch?v=E-Gn2DScjyA"
}, {
  "course": "Material and Energy Balances",
  "title": "Adiabatic Flame Temperature",
  "url": "https://www.youtube.com/watch?v=EQS69hRyy_Q"
}, {
  "course": "Material and Energy Balances",
  "title": "Calculating Enthalpy Changes Using Heat of Reaction Method",
  "url": "https://www.youtube.com/watch?v=z438ssCWhdw"
}, {
  "course": "Material and Energy Balances",
  "title": "Calculating Enthalpy Changes Using Heats of Formation Method",
  "url": "https://www.youtube.com/watch?v=OCX8LuKnNgY"
}, {
  "course": "Material and Energy Balances",
  "title": "Heat of Combustion",
  "url": "https://www.youtube.com/watch?v=f_pwhtjPSRQ"
}, {
  "course": "Material and Energy Balances",
  "title": "Hess' Law",
  "url": "https://www.youtube.com/watch?v=m_f3d6QsWH8"
}, {
  "course": "Material and Energy Balances",
  "title": "Steam Reformer Material and Energy Balances",
  "url": "https://www.youtube.com/watch?v=w1WhplWvp6g"
}, {
  "course": "Material and Energy Balances",
  "title": "Unsteady-State Energy Balance (Steam Tables)",
  "url": "https://www.youtube.com/watch?v=wEEAr4aD_bU"
}, {
  "course": "Material Science",
  "title": "Atomic Bonding",
  "url": "https://www.youtube.com/watch?v=w5BNUfjHimg"
}, {
  "course": "Material Science",
  "title": "Elastic Properties of Metals",
  "url": "https://www.youtube.com/watch?v=AZ-vD13QDYg"
}, {
  "course": "Material Science",
  "title": "Engineering Stress and Strain",
  "url": "https://www.youtube.com/watch?v=7Eiv7Qr4HQ8"
}, {
  "course": "Material Science",
  "title": "Electrical Conductivity",
  "url": "https://www.youtube.com/watch?v=pW5Uw3YDz5w"
}, {
  "course": "Material Science",
  "title": "Pressure-Temperature Diagram",
  "url": "https://www.youtube.com/watch?v=6MftCqFHN3I"
}, {
  "course": "Material Science",
  "title": "Solid-Liquid Phase Diagrams",
  "url": "https://www.youtube.com/watch?v=nfeOcsblCyM"
}, {
  "course": "Process Controls",
  "title": "Transfer Function Models",
  "url": "https://www.youtube.com/watch?v=1g19f-iXfak"
}, {
  "course": "Process Controls",
  "title": "Inverse Response",
  "url": "https://www.youtube.com/watch?v=aXV1h3b7jO8"
}, {
  "course": "Process Design",
  "title": "Basics of BFDs, PFDs, &amp; PIDs",
  "url": "https://www.youtube.com/watch?v=G1_iQtvepIg"
}, {
  "course": "Process Design",
  "title": "Block Flow Diagram Examples",
  "url": "https://www.youtube.com/watch?v=Jzs8ph0I6Pc"
}, {
  "course": "Process Design",
  "title": "Characteristics of BFDs",
  "url": "https://www.youtube.com/watch?v=Yx-SjGG1wHs"
}, {
  "course": "Process Design",
  "title": "Approximate Profitability Measures",
  "url": "https://www.youtube.com/watch?v=O9FykXj8ywo"
}, {
  "course": "Process Design",
  "title": "Capital Cost Comparison: Capitalized Cost Analysis",
  "url": "https://www.youtube.com/watch?v=ZTpGacyUtBk"
}, {
  "course": "Process Design",
  "title": "Capital Cost Comparison: Present Worth Analysis",
  "url": "https://www.youtube.com/watch?v=4rZ-DPszlZE"
}, {
  "course": "Process Design",
  "title": "Gross Economic Profit Analysis",
  "url": "https://www.youtube.com/watch?v=0GfES6dgg_8"
}, {
  "course": "Process Design",
  "title": "Net Present Value and Investor's Rate of Return",
  "url": "https://www.youtube.com/watch?v=yb8a8QPUYCc"
}, {
  "course": "Process Design",
  "title": "SuperPro Designer: Modeling a Batch Reactor",
  "url": "https://www.youtube.com/watch?v=MLfonzyG3T0"
}, {
  "course": "Process Design",
  "title": "Introduction to Aspen Plus:Choosing a Property Method",
  "url": "https://www.youtube.com/watch?v=ADbd3Cff_XM"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Binary Flash DistillationExample",
  "url": "https://www.youtube.com/watch?v=_fsFG3NspsE"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Distillation - Murphree Efficiency",
  "url": "https://www.youtube.com/watch?v=rk8jpKHpD2o"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Distillation - Side Stream Feed",
  "url": "https://www.youtube.com/watch?v=EX7GV-zB46g"
}, {
  "course": "Separations and Mass Transfer",
  "title": "McCabe-Thiele: Stepping off Stages",
  "url": "https://www.youtube.com/watch?v=rlg-ptQMAsg"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Packed Bed Column Height",
  "url": "https://www.youtube.com/watch?v=2WI2sMIa5r0"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Partially Miscible Liquid-Liquid Extraction",
  "url": "https://www.youtube.com/watch?v=N7MIH0_ELO0"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Absorption of a Dilute Species",
  "url": "https://www.youtube.com/watch?v=BoPKngZZwVI"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Diffusion into a Solid",
  "url": "https://www.youtube.com/watch?v=gjoHxwMzptk"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Equimolar Counter-diffusion Example",
  "url": "https://www.youtube.com/watch?v=mex15lPG-64"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Hydrogen Diffusion through Palladium",
  "url": "https://www.youtube.com/watch?v=NGp_Gkbtvt4"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Unimolecular Diffusion Example",
  "url": "https://www.youtube.com/watch?v=m-sigBs5ilE"
}, {
  "course": "Separations and Mass Transfer",
  "title": "Convective Mass Transfer",
  "url": "https://www.youtube.com/watch?v=m8VADsoQ2tw"
}, {
  "course": "Statics",
  "title": "Forces Acting on a Frame",
  "url": "https://www.youtube.com/watch?v=EJeYhVx0zG0"
}, {
  "course": "Statistics",
  "title": "Binomial Distribution",
  "url": "https://www.youtube.com/watch?v=zv4jEM_tbBI"
}, {
  "course": "Statistics",
  "title": "Negative Binomial Distribution",
  "url": "https://www.youtube.com/watch?v=UUzRsQ-8vC8"
}, {
  "course": "Statistics",
  "title": "Non-Linear Regression Introduction",
  "url": "https://www.youtube.com/watch?v=G5JZsVjCYbY"
}, {
  "course": "Thermodynamics",
  "title": "Compare Steam Tables to Ideal Gas Law",
  "url": "https://www.youtube.com/watch?v=kw862Ak1Fyg"
}, {
  "course": "Thermodynamics",
  "title": "Steam Tables: Interpolation",
  "url": "https://www.youtube.com/watch?v=3aWjbd5Xj0M"
}, {
  "course": "Thermodynamics",
  "title": "Internal Energy Introduction",
  "url": "https://www.youtube.com/watch?v=UTj9YEvOt2U"
}, {
  "course": "Thermodynamics",
  "title": "Irreversible Adiabatic Expansion",
  "url": "https://www.youtube.com/watch?v=NdTkzvMV9u8"
}, {
  "course": "Thermodynamics",
  "title": "Isothermal Ideal Gas Compression",
  "url": "https://www.youtube.com/watch?v=WkjmJB25Vb8"
}, {
  "course": "Thermodynamics",
  "title": "Reversible Adiabatic Compression of IdealGas",
  "url": "https://www.youtube.com/watch?v=EEUtRiuWK2o"
}, {
  "course": "Thermodynamics",
  "title": "Energy Balance: Steam Tables",
  "url": "https://www.youtube.com/watch?v=AS3_ZUSW6K0"
}, {
  "course": "Thermodynamics",
  "title": "What is Enthalpy?",
  "url": "https://www.youtube.com/watch?v=AK9JIFyzqMY"
}, {
  "course": "Thermodynamics",
  "title": "Adiabatic Expansion of Steam",
  "url": "https://www.youtube.com/watch?v=Z_j9UKtuY0Y"
}, {
  "course": "Thermodynamics",
  "title": "Real Gas Expansion",
  "url": "https://www.youtube.com/watch?v=O7akgeeHkZ4"
}, {
  "course": "Thermodynamics",
  "title": "Adiabatic Compression of an Ideal Gas",
  "url": "https://www.youtube.com/watch?v=Gag_HoWlLnE"
}, {
  "course": "Thermodynamics",
  "title": "Maximum Work from a Turbine",
  "url": "https://www.youtube.com/watch?v=44lm6xWYDCQ"
}, {
  "course": "Thermodynamics",
  "title": "Compressor Efficiency",
  "url": "https://www.youtube.com/watch?v=UEM5bdHPWR4"
}, {
  "course": "Thermodynamics",
  "title": "EntropyChange for Ideal Gas Expansion",
  "url": "https://www.youtube.com/watch?v=4TJe7jt0O3c"
}, {
  "course": "Thermodynamics",
  "title": "Entropy: Two Explanations",
  "url": "https://www.youtube.com/watch?v=Ox1A0A6WX3E"
}, {
  "course": "Thermodynamics",
  "title": "SecondLawApplication",
  "url": "https://www.youtube.com/watch?v=tepL-O7jHAQ"
}, {
  "course": "Thermodynamics",
  "title": "T-S and P-H Diagrams",
  "url": "https://www.youtube.com/watch?v=10q0akdZ7QQ"
}, {
  "course": "Thermodynamics",
  "title": "Carnot Heat Pump",
  "url": "https://www.youtube.com/watch?v=y2t8nNI9cw4"
}, {
  "course": "Thermodynamics",
  "title": "Heat Engine Introduction",
  "url": "https://www.youtube.com/watch?v=1og_BcG89aA"
}, {
  "course": "Thermodynamics",
  "title": "Power Cycle Introduction",
  "url": "https://www.youtube.com/watch?v=BA77fu3zAbs"
}, {
  "course": "Thermodynamics",
  "title": "Refrigeration Cycle Introduction",
  "url": "https://www.youtube.com/watch?v=TBEEt8x4nSo"
}, {
  "course": "Thermodynamics",
  "title": "Heat Capacity Pressure Dependence",
  "url": "https://www.youtube.com/watch?v=zkPnOWRpseI"
}, {
  "course": "Thermodynamics",
  "title": "Air/Water Vapor-Liquid Equilibrium",
  "url": "https://www.youtube.com/watch?v=bWOVVzevgOE"
}, {
  "course": "Thermodynamics",
  "title": "PT and PV Phase Diagrams",
  "url": "https://www.youtube.com/watch?v=4igUQA6y1KA"
}, {
  "course": "Thermodynamics",
  "title": "Chemical Potential Changes When Salt Added to Water",
  "url": "https://www.youtube.com/watch?v=e7yFy7F0LVo"
}, {
  "course": "Thermodynamics",
  "title": "Chemical Potential/Thermodynamic Activity",
  "url": "https://www.youtube.com/watch?v=kFZmJlfZ5Y4"
}, {
  "course": "Thermodynamics",
  "title": "Gibbs Free Energy: T &amp; P Dependence",
  "url": "https://www.youtube.com/watch?v=0IGQKS_3Vpw"
}, {
  "course": "Thermodynamics",
  "title": "Fugacity of a Single Component",
  "url": "https://www.youtube.com/watch?v=C4EDtrdojyM"
}, {
  "course": "Thermodynamics",
  "title": "Which has Higher Fugacity?",
  "url": "https://www.youtube.com/watch?v=gqJ8d5qPeag"
}, {
  "course": "Thermodynamics",
  "title": "T-x-y Diagram: Lever Rule",
  "url": "https://www.youtube.com/watch?v=yK9zRi66Wl8"
}, {
  "course": "Thermodynamics",
  "title": "Binary Pressure-Temperature Diagram",
  "url": "https://www.youtube.com/watch?v=E_Vuz8cfbEo"
}, {
  "course": "Thermodynamics",
  "title": "Phase Equilibrium: T-x-y Diagram",
  "url": "https://www.youtube.com/watch?v=-XcTEknC9Aw"
}, {
  "course": "Thermodynamics",
  "title": "Gibbs Free Energy Change for Non-Ideal Mixture",
  "url": "https://www.youtube.com/watch?v=31vhjLetP_o"
}, {
  "course": "Thermodynamics",
  "title": "Heat of Mixing",
  "url": "https://www.youtube.com/watch?v=gDclgWqZhy4"
}, {
  "course": "Thermodynamics",
  "title": "Mixing Ideal Solutions",
  "url": "https://www.youtube.com/watch?v=vhjDH38Atpw"
}, {
  "course": "Thermodynamics",
  "title": "Which Reaction Reaches Equilibrium First? (Interactive)",
  "url": "https://www.youtube.com/watch?v=BgSC8YD1oTQ"
}, {
  "course": "Thermodynamics",
  "title": "Gibbs Phase Rule: Reacting Systems",
  "url": "https://www.youtube.com/watch?v=3MwnYUzx7Ec"
}, {
  "course": "Thermodynamics",
  "title": "Description of the Reaction Coordinate",
  "url": "https://www.youtube.com/watch?v=67P5BdtGVWA"
}, {
  "course": "Thermodynamics",
  "title": "Solid-Liquid Chemical Equilibrium",
  "url": "https://www.youtube.com/watch?v=09POR4okUzI"
}, {
  "course": "Thermodynamics",
  "title": "Standard State in Chemical Equilibrium",
  "url": "https://www.youtube.com/watch?v=bb8C7xxGkFw"
}, {
  "course": "Thermodynamics",
  "title": "Catalytic Selectivity and Equilibrium",
  "url": "https://www.youtube.com/watch?v=pJJZMcAo44g"
}, {
  "course": "Thermodynamics",
  "title": "Equilibrium Constant Introduction",
  "url": "https://www.youtube.com/watch?v=ovQXDFwgDvQ"
}, {
  "course": "Thermodynamics",
  "title": "Heatof Reaction (from Heat of Formation)",
  "url": "https://www.youtube.com/watch?v=zYA1cYDghUw"
}, {
  "course": "Thermodynamics",
  "title": "Chemical Equilibrium: Standard State Gibbs Free Energy",
  "url": "https://www.youtube.com/watch?v=Th1hNfzs7tk"
}, {
  "course": "Thermodynamics",
  "title": "First Law and State Function",
  "url": "https://www.youtube.com/watch?v=mplF5fAos4E"
}, {
  "course": "Thermodynamics",
  "title": "First Law &amp; Irreversible Expansion",
  "url": "https://www.youtube.com/watch?v=bKgA0EFuQIQ"
}, {
  "course": "Thermodynamics",
  "title": "Fugacity from P-x-y Diagram",
  "url": "https://www.youtube.com/watch?v=nsOUXL0RD9c"
}, {
  "course": "Thermodynamics",
  "title": "VLE using Fugacity Coefficients",
  "url": "https://www.youtube.com/watch?v=Af_SwI40I9E"
}];

const descriptions = [{
  "description": "Presents the rules used to assign oxidation numbers to atoms with examples. Discusses the difference between oxidation number and formal charge."
}, {
  "description": "Determine the formal charge on the best Lewis structure of NO+."
}, {
  "description": "Given the masses of two reactants, determine how many grams of one of the products form and identify the reactant in excess."
}, {
  "description": "Calculates the acid dissociation constant given the pH for a starting concentration of formic acid."
}, {
  "description": "Balance an oxidation/reduction reaction in acidic solution using the half-reaction method"
}, {
  "description": "Calculates the hydroxide ion concentration and the pH given the hydrogen ion concentration. "
}, {
  "description": "Determine the oxidation number of an element in an ion."
}, {
  "description": "Identify which species is the oxidizing agent and which is the reducing agent"
}, {
  "description": "Calculates the pH of an acetic acid solution given the acid ionization constant."
}, {
  "description": "Calculate the volume of H2SO4 needed to titrate a given volume of NaOH solution"
}, {
  "description": "Introduces Aspen Plus and describes the various property methods available. "
}, {
  "description": "Reviews the Euler method used to solve ordinary differential equations."
}, {
  "description": "Reviews the Runge-Kutta method used to solve ordinary differential equations."
}, {
  "description": "Detailed definition of 'fluid' and describes how to characterize fluids."
}, {
  "description": "Example of unit conversion for a dimensionless group by showing the Reynolds number, a number describing how a fluid flows through a pipe."
}, {
  "description": "Introduction to the concept of fluid viscosity and its definition in terms of the relationship between shear stress and deformation."
}, {
  "description": "Expressing flow and deformation in terms of strain and strain rates."
}, {
  "description": "Common types of non-Newtonian behavior (shear thinning, shear thickening, Bingham-plastic). Learn how to walk on water!"
}, {
  "description": "The power law model of shear thinning behavior."
}, {
  "description": "Relationship between velocity gradients and rates of deformation."
}, {
  "description": "Fundamental definition of surface tension and its length scale dependence."
}, {
  "description": "Using force and velocity, determines the viscosity of an unknown fluid."
}, {
  "description": "Introductory lecture presenting a discussion of the key properties that distinguish fluids from other states of matter, a brief review of thermodynamic properties relevant to fluid mechanics, and the continuum approximation."
}, {
  "description": "Examines the differences in calculating air pressure at high elevations using different assumptions."
}, {
  "description": "Determine the pressure at multiple positions within a water tank."
}, {
  "description": "Determines the relationship between pressure change and manometer reading for an inclined manometer."
}, {
  "description": "Demonstration of the Bernoulli effect and an example problem of air flowing through a constriction (Venturi flow meter)."
}, {
  "description": "Determines the time to drain a cylindrical coffee pot using the Bernoulli equation."
}, {
  "description": "Determine the exit velocity and volumetric flow from a tank given the pipe size and manometer readings at the outlet."
}, {
  "description": "Use the Bernoulli equation to solve for the velocity of steadily flowing air exiting a nozzle."
}, {
  "description": "What happens to the pressure drop across an arterial wall when plaque builds up?"
}, {
  "description": "Multiple choice question: How does the pressure change as air flows through a Venturi meter? Interactive screencast."
}, {
  "description": "Use the Navier Stokes equation to characterize the flow of a liquid between two flat plates."
}, {
  "description": "Determines the shear stress on the plate surface given a laminar velocity profile."
}, {
  "description": "Introduces the use of the mechanical energy balance in solving pipe flow type problems."
}, {
  "description": "Determine the power added by a pump to move fluid from one elevation to another."
}, {
  "description": "Multiple choice question: How does increasing pipe length affect the pressure drop? Interactive screencast."
}, {
  "description": "Determines the pressure drop down a length of pipe for steady fully developed laminar flow using wall shear stress."
}, {
  "description": "Determine the pressure drop of a pipe in a pipe system using both major and minor losses. "
}, {
  "description": "Multiple choice question: Which method is most appropriate for predicting pressure drops in 3D turbulent flow? Interactive screencast."
}, {
  "description": "Explains how to read a Moody chart for determining frictional factors in pipe flow problems."
}, {
  "description": "Determine volumetric flow and velocity for oil flowing in a pipe and use the Reynolds number to verify laminar flow properties."
}, {
  "description": "Based on plots relating shear stress to the rate of shearing strain for different fluids, which one is the shear thickening fluid? Interactive screencast."
}, {
  "description": "Performs a scaling analysis on a blimp flowing through water to estimate the drag and power consumption of a full size prototype."
}, {
  "description": "Describes the importance of plotting dimensionless parameters as a function of other dimensionless variables to develop correlations. Uses the coefficient of drag and the Reynolds number as an example."
}, {
  "description": "Compares various boundary conditions for a steady-state, one-dimensional system."
}, {
  "description": "Derives the equation for conductive heat transfer through a plane wall at steady-state conditions."
}, {
  "description": "The overall heat transfer coefficient for radial systems is used to find the surface temperature of a pipe."
}, {
  "description": "Determines the center-line temperature of a cylindrical rod heated by convection."
}, {
  "description": "Compares local and average heat transfer coefficients."
}, {
  "description": "Explains how to calculate the overall heat transfer coefficient for a system with conduction and convection."
}, {
  "description": "Outlines the procedure to solve convection problems."
}, {
  "description": "Calculates the heat generation needed to heat water in a thick-walled pipe"
}, {
  "description": "Explains how to calculate the log mean temperature difference for a heat exchanger."
}, {
  "description": "Calculates the mass flow rate of cooling water in a concentric, counter-current heat exchanger."
}, {
  "description": "Uses the NTU effectiveness method to find the overall heat transfer coefficient for a counter-flow, concentric heat exchanger."
}, {
  "description": "Finds the length of a concentric, parallel flow heat exchanger using an overall heat transfer coefficient and the log mean temperature."
}, {
  "description": "Defines opaque, diffuse and gray surfaces and discusses how they differ from blackbodies."
}, {
  "description": "Explanation of the process of radiation."
}, {
  "description": "Demonstrates how to calculate radiation exchange between surfaces in an enclosure."
}, {
  "description": "Defines view factors and shows two examples of how to calculate them."
}, {
  "description": "Describes why batch reactors are used, their scale up capabilities, and presents mole balances for the reactor."
}, {
  "description": "Develops the mass balance for an isothermal batch reactor with a reversible reaction."
}, {
  "description": "Overview of situations where the semibatch reactor has advantages over other types of reactors. The mole balance for the reactor is briefly presented."
}, {
  "description": "Describes reasons for using a CSTR, presents mass balances and discusses unique aspects of CSTRs."
}, {
  "description": "A brief overview of plug flow reactors, their properties, equations, and uses."
}, {
  "description": "Uses graphical approach to compare volumes of two CSTRs in series and two PFRs in series."
}, {
  "description": "Example looking at how the rate constant changes with temperature using Arrhenius relationship."
}, {
  "description": "Examine how adding an inert changes the equilibrium conversion of a gas-phase reaction for both isothermal and adiabatic cases."
}, {
  "description": "Using rate constant information for a two step reaction, use steady-state approximations to determine an overall rate expression for the product formation."
}, {
  "description": "Compare steady-state approximation method to rate determining step methods for an equilibrium reaction."
}, {
  "description": "An overview of the benefit of catalysts in both reaction selectivity and equilibrium."
}, {
  "description": "Calculates the concentration profile and the flux to a catalyst surface that is covered by a porous layer. Because the reaction has a mole change, bulk flow is taken into account."
}, {
  "description": "Given a concentration gradient in a porous cylindrical catalyst pellet, determine the amount reacting within the cylinder."
}, {
  "description": "Introduction to Michaelis-Menten kinetics for enzymatic reactions."
}, {
  "description": "Using Michaelis-Menten kinetics, describes the rate of reaction when competitive inhibition is present."
}, {
  "description": "Compares the rate of reaction for 2 conditions in a plug flow reactor and explains why the rate of reaction in higher in one reactor. Also, compare the rate of reaction in 3 catalyst pellets with different concentration gradients."
}, {
  "description": "Considers the relationship between the equilibrium constants K, Kc, and Kp that show up in reversible kinetic rate expressions."
}, {
  "description": "Using a natural log-natural log plot and reaction information, determine the reaction order and rate constant associated with one of the reagents."
}, {
  "description": "Solves mass balances for an isothermal batch reactor with three parallel reactions. The POLYMATH program is used to solve differential equations."
}, {
  "description": "Determine the relationships for concentration vs. time for a series reaction in a batch reactor."
}, {
  "description": "Given three different reactors and reaction data, calculate which reactor yields the largest conversion of reactant to product."
}, {
  "description": "Conceptual problem that calculates whether the conversion in a 100 L adiabatic CSTR will be greater than, less than, or equal to the conversion in a 100 L adiabatic PFR."
}, {
  "description": "Review problem deriving the Langmuir-Hinshelwood rate expression for an irreversible, gas-phase reaction. Compares result with experimental data."
}, {
  "description": "Review problem that determines if it is better to run the reaction isothermally or adiabatically to achieve a high selectivity to the desired product."
}, {
  "description": "Conceptual problem that calculates whether the selectivity toward the desired product is higher in a PFR or CSTR."
}, {
  "description": "A general mass balance is presented and simplifications of the balance are shown for different processes."
}, {
  "description": "Introduction to processes and the general material balance. A short example on a tank with inlet and outlet flow."
}, {
  "description": "Presents a general approach for solving simple material balances. Includes an example of independent versus dependent equations."
}, {
  "description": "Given an inlet water-air stream and amount adsorbed from the air, determine flow rates and composition of water."
}, {
  "description": "Analyzes a splitting point and explains why modeling this type of system is different from other types of systems"
}, {
  "description": "Performs material balances on multiple units to solve for unknowns. Focuses on crystallizer balance where a slurry is part solid and part liquid."
}, {
  "description": "Performs multiple unit balances to solve for unknown stream rates and compositions."
}, {
  "description": "Solves material balances over a process involving a combustion reactor and a recycle loop."
}, {
  "description": "Determines production rates and purge stream conditions for a single reaction with recycle and purge."
}, {
  "description": "A valve controls the release of an ideal gas from a tank into a piston-cylinder. Given information about the initial and final conditions, determine the missing state variables by performing an energy balance."
}, {
  "description": "Calculates the adiabatic flame temperature when butane burns in pure oxygen."
}, {
  "description": "An example problem where the enthalpy change of a reaction is determined using the heat of reaction method and material balances."
}, {
  "description": "An example problem where the enthalpy change of a reaction is determined using the heats of formation method and material balances."
}, {
  "description": "Uses Hess's law to show how heat of combustion is used to calculate the heat of reaction."
}, {
  "description": "Explains Hess's law and provides an example of how to use it to solve for the heat of reaction for an equation."
}, {
  "description": "Use atomic balances and a general energy balance on an adiabatic reactor to determine the molar flow rates of outgoing product streams in the gas-phase steam reforming of propane."
}, {
  "description": "Unsteady-state energy balance on a tank containing steam to which additional steam is added. Uses steam tables."
}, {
  "description": "Describes the three types of atomic bonding and presents the equation used to calculate percent ionic character."
}, {
  "description": "Uses the elastic properties of metals to select a material for a design problem."
}, {
  "description": "Demonstrates how to calculate engineering stress and strain."
}, {
  "description": "Compares the electrical conductivities of two metal alloys given voltage drop data in a test circuit."
}, {
  "description": "Describes the regions of a pressure-temperature projection and the behavior across phase boundaries."
}, {
  "description": "Describes the regions of a liquid-solid, T-x phase diagram for a system composed of Mg and Si."
}, {
  "description": "Develops a transfer function model using an energy balance. Shows how changes in the inlet temperature of a tank impact the outlet temperature. "
}, {
  "description": "explains an inverse response to a step input for a second-order, overdamped, lead-lag system"
}, {
  "description": "Compares block flow diagrams (BFDs), process flow diagrams (PFDs), and piping and instrumentation diagrams (PIDs)."
}, {
  "description": "Gives examples of block flow diagrams (BFDs) for various processes."
}, {
  "description": "Describes characteristics of block flow diagrams (BFDs)."
}, {
  "description": "Introduces the concept of return on investment, payback period and venture profit."
}, {
  "description": "Compares the cost of two equipment options using the concept of capitalized cost."
}, {
  "description": "Compares the cost of two equipment options using the concept of present worth."
}, {
  "description": "Performs a gross economic profit analysis on two reactions to determine which pathway should move forward in the design tree."
}, {
  "description": "Calculates the net present value (NPV) for a project using cash flow and time value of money as well as the investor's rate of return (IRR)."
}, {
  "description": "Overview of setting up a batch reactor in SuperPro Designer."
}, {
  "description": "Introduces Aspen Plus and describes the various property methods available. "
}, {
  "description": "Example problem focused on determining the operating conditions for a binary flash distillation column."
}, {
  "description": "Example describing the use of Murphree efficiency and its effect on the number of stages in a distillation column."
}, {
  "description": "Example distillation problem consisting of feed and secondary side stream feed containing steam. Determines feed location and number of stages"
}, {
  "description": "Demonstrates conceptually how to step off stages on a McCabe-Thiele diagram."
}, {
  "description": "An example describing how to calculate the height of a packed bed distillation column."
}, {
  "description": "Determining the number of stages in a liquid-liquid extraction for a partially miscible system. Given equilibrium data, design the separations system."
}, {
  "description": "Calculates the number of stages for an absorption column needed to remove chloroform from an air stream given inlet and outlet specifications."
}, {
  "description": "Calculates the time for carbon to diffuse into a metal alloy at high temperature."
}, {
  "description": "Calculates species' velocities and molar flow rates for a binary mixture undergoing equimolar counterdiffusion."
}, {
  "description": "Example on hydrogen diffusion through palladium."
}, {
  "description": "Uses the unimolecular diffusion flux equations to solve for initial flux and time to evaporate a fluid from a beaker."
}, {
  "description": "A lead tank contains water. Lead is leaching into the water through convective transfer. Determine a relationship between concentration of lead and the dependent variables of the system."
}, {
  "description": "Calculates the forces acting on different points on a frame that has two resultant forces acting on it."
}, {
  "description": "derives binomial distribution for data analysis and gives an example"
}, {
  "description": "derives the negative binomial distribution for data analysis and gives an example"
}, {
  "description": "Uses non-linear regression to obtain kinetic parameters from kinetic data obtained from an isothermal CSTR. POLYMATH is used to carry out the regression."
}, {
  "description": "Calculates the volume of a gas using the ideal gas law and compares to the volume at the same conditions from the steam tables."
}, {
  "description": "Example problems that calculate enthalpy of steam by interpolation of steam tables."
}, {
  "description": "Introduces and discusses internal energy and moving boundary work on a system."
}, {
  "description": "Energy balance on an ideal gas that undergoes irreversible, adiabatic expansion."
}, {
  "description": "Energy balance for isothermal compression of an ideal gas in a closed system."
}, {
  "description": "Calculates the final conditions for the adiabatic compression of an ideal gas. A demonstration of an adiabatic compression is included."
}, {
  "description": "Solves a constant pressure, closed system energy balance using steam tables."
}, {
  "description": "Presents the definition of enthalpy, its differential, and its use in energy balances."
}, {
  "description": "Use steam tables to determine the work done by the adiabatic expansion of steam."
}, {
  "description": "Determine the final state of a real gas that expands adiabatically into a vacuum."
}, {
  "description": "Calculate the adiabatic temperature for compression of an ideal gas, both reversibly and irreversibly."
}, {
  "description": "Determine the maximum work possible from a turbine and determine the outlet conditions."
}, {
  "description": "Calculate the efficiency of a compressor that uses an ideal gas."
}, {
  "description": "Calculates the entropy change for the irreversible, adiabatic expansion of an ideal gas into a vacuum."
}, {
  "description": "Discuss (1) the entropy change for a continuous engineering operation, and (2) can 100 J work can be converted to 100 J heat continuously?"
}, {
  "description": "Uses the second law to evaluate whether a continuous process is possible."
}, {
  "description": "Explains the temperature-entropy and the pressure-enthalpy diagrams."
}, {
  "description": "Calculate the heat transfer for a Carnot heat pump."
}, {
  "description": "Introduction to the Carnot heat engine and the Rankine cycle."
}, {
  "description": "Describes the steps in a power cycle that converts high temperature heat into work using a turbine."
}, {
  "description": "Explains each step in a refrigeration cycle and the energy balance for each step. The process is shown in a pressure-enthalpy diagram. An interactive simulation that also demonstrates the behavior is available at https://demonstrations.wolfram.com/OrdinaryVaporCompressionOVCCycleForRefrigerantR134a/"
}, {
  "description": "Calculate how the heat capacity of the gas depends on pressure."
}, {
  "description": "Discusses how vapor-liquid equilibrium changes in an air/water system when some of the air is removed."
}, {
  "description": "Explains the pressure-temperature and pressure-volume phase diagrams for single component. "
}, {
  "description": "Describes how chemical potential changes with temperature to explain freezing point depression and boiling point elevation when salt is added to liquid water. "
}, {
  "description": "An introduction to chemical potential and thermodynamics activity and how they are related."
}, {
  "description": "Describes how Gibbs free energy depends on pressure and temperature to give insight on how fugacity depends on these variables."
}, {
  "description": "Calculate the fugacities of a gas and a liquid."
}, {
  "description": "Compares two components and explains which has the higher fugacity in a mixture. Also compares a single component at different concentrations."
}, {
  "description": "Determines temperature and composition when a liquid is partially evaporated using a Txy diagram."
}, {
  "description": "Describes how to read a pressure-temperature diagram for a binary mixture and compares this diagram to P-x-y and T-x-y diagrams."
}, {
  "description": "A conceptual question investigating how the molar composition changes to a vapor-liquid equilibrium system as temperature is changed."
}, {
  "description": "Using vapor-liquid equilibrium data, calculate the Gibbs free energy change to form a non-ideal liquid mixture."
}, {
  "description": "Calculate heat of mixing when two solutions are mixed."
}, {
  "description": "Illustrates the changes in state variables (V, H, U, S, G) when ideal solutions form."
}, {
  "description": "MCQ: Given the equilibrium constants for two reactions, what can be concluded about which reaction reaches equilibrium first or which has a higher equilibrium conversion? Interactive screencast."
}, {
  "description": "Explains the Gibbs phase rule when chemical reactions take place."
}, {
  "description": "Explains the energy versus reaction coordinate diagram. Relates the activation energies for the forward and reverse reactions of an exothermic reaction to the equilibrium constant dependence on temperature."
}, {
  "description": "An example of heterogeneous chemical equilibrium with both liquid and solid phases. Estimate the maximum temperature at which calcium (liquid) reduces thorium dioxide (solid)."
}, {
  "description": "Demonstrates that changing the standard state from a gas to a liquid for water in the water gas shift reaction changes the equilibrium constant but not the equilibrium composition."
}, {
  "description": "An overview of the benefit of catalysts in both reaction selectivity and equilibrium."
}, {
  "description": "Explains the equilibrium constant for an ideal gas and for a liquid."
}, {
  "description": "Determine the heat of reaction at a higher temperature from the heat of reaction at 25 Â°C."
}, {
  "description": "Calculate the standard state Gibbs free energy change given equilibrium data for a heterogeneous reaction."
}, {
  "description": "Applies the first law to two processes between the same initial and final states."
}, {
  "description": "Applies the first law to an irreversible expansion in a piston/cylinder system."
}, {
  "description": "Uses a Pxy diagram to determine which component has the higher fugacity in a binary liquid mixture."
}, {
  "description": "Use fugacity coefficients to calculate vapor-liquid equilibrium for a binary system."
}];

const combined = [];

for(let i = 0; i < items.length; i++) {
  combined.push({});
  combined[i].title = items[i].title;
  combined[i].course = items[i].course;
  combined[i].url = items[i].url;
  combined[i].description = descriptions[i].description;
}

const output = {
  "blank" : {

  }
};

for ( let i = 0; i < combined.length; i++ ) {

  const sc = combined[i];
  const course = sc.course;
  const title = sc.title;
  const url = sc.url;
  const desc = sc.description;

  if( typeof( output["blank"][`${course}`] ) != "object" ) {
    output["blank"][`${course}`] = [];
  }

  output["blank"][`${course}`].push({
    title: title,
    description: desc,
    url : url,
  });
}

let text = JSON.stringify(output);

fs.writeFile('FE.txt', text, function (err) {
  if (err) return console.log(err);
});

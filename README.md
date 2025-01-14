# Chemical Reactors: Closed, Open, and Constant Volume

## Project Description
This project models and simulates chemical reactions in various reactor configurations, including closed, open, and constant-volume systems. Using numerical methods like Heun's method and differential equations, it examines reactor behaviors under different conditions such as Damköhler numbers, reaction rates, and beta coefficients.

## Features
- **Closed Reactor**:
  - Simulates reaction progression under constant volume.
  - Explores critical Damköhler numbers for ignition and extinction behaviors.
- **Open Reactor**:
  - Analyzes steady-state conditions for an open system.
  - Visualizes ignition and extinction branches.
- **Numerical Integration**:
  - Implements Heun's method for solving differential equations.
  - Provides simplified solutions for quick calculations.

## Included Files
- `constant_volume_reactor.m`: Simulates a constant-volume closed reactor.
- `closed_reactor.m`: Models a closed reactor using numerical integration.
- `open_reactor.m`: Simulates open reactor behavior and plots ignition/extinction curves.
- `ODE_solver.m`: Generalized ODE solver for reactor modeling.
- `simplified_ODE_solver.m`: Simplified ODE solver for quick calculations.

## Requirements
- MATLAB R2020b or higher.

## Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/rmodregoe/chemical-reactors-simulation.git
   ```
2. Open the `.m` files in MATLAB.
3. Run individual scripts based on the desired reactor type:
   - Closed reactor simulation:
     ```matlab
     run('constant_volume_reactor.m')
     ```
   - Open reactor simulation:
     ```matlab
     run('open_reactor.m')
     ```
   - Use `ODE_solver.m` for custom ODE solutions.

## Results
- Outputs include plots of reactor variables (e.g., temperature, reaction progress) under different conditions.
- Visualizes ignition and extinction behaviors for open reactors.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
Created by Ricardo Modrego. For questions or comments, contact me at [r.modrego.e@gmail.com](mailto:r.modrego.e@gmail.com).

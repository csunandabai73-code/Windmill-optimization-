import math

# Constants
air_density = 1.225      # kg/m³
blade_radius = 2.0       # meters
cp = 0.40                # Power coefficient (efficiency)

# Swept area of the wind turbine
area = math.pi * blade_radius ** 2

# Wind speeds (m/s)
wind_speeds = [3, 5, 7, 9, 11, 13, 15]

max_power = 0
optimal_speed = 0

print("Wind Speed (m/s)\tPower Output (W)")

for v in wind_speeds:
    # Wind power equation
    power = 0.5 * air_density * area * (v ** 3) * cp

    print(f"{v}\t\t\t{power:.2f}")

    if power > max_power:
        max_power = power
        optimal_speed = v

print("\nMaximum Power Output:", round(max_power, 2), "W")
print("Optimal Wind Speed:", optimal_speed, "m/s")

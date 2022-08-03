function signal = create_rectangular_signal(width_high, width_low , t ,x_shift, x_min, x_max)
a = width_high + width_low;
b = t -x_shift;
signal = and(and(and((mod(b,a) < (width_high)), (mod(b,a) >= 0)), t <= x_max), t>=x_min);
end

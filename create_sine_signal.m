function signal = create_sine_signal(frequency, amplitude, t ,x_shift,y_shift)
signal = amplitude * sin(2*pi*frequency .*(t - x_shift)) + y_shift;
end
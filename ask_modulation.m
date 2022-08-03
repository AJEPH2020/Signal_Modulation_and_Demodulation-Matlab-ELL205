function [signal2,signal3] = ask_modulation(signal1, t , carrier_frequency,carrier_amplitude, carrier_x_shift, carrier_y_shift)
signal2 = create_sine_signal(carrier_frequency, carrier_amplitude, t, carrier_x_shift, carrier_y_shift);
signal3 =  signal2 .* signal1;
end


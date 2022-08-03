function [high_frequency_carrier, low_frequency_carrier, modulated_signal] = fsk_modulation(digital_signal, t,  carrier1_frequency,carrier1_amplitude, carrier1_x_shift, carrier1_y_shift, carrier2_frequency, carrier2_amplitude, carrier2_x_shift, carrier2_y_shift)
if(carrier1_frequency > carrier2_frequency)
    high_frequency_carrier = create_sine_signal(carrier1_frequency,carrier1_amplitude,t,carrier1_x_shift,carrier1_y_shift);
    low_frequency_carrier = create_sine_signal(carrier2_frequency, carrier2_amplitude, t, carrier2_x_shift, carrier2_y_shift);
else
    low_frequency_carrier = create_sine_signal(carrier1_frequency,carrier1_amplitude,t,carrier1_x_shift,carrier1_y_shift);
    high_frequency_carrier = create_sine_signal(carrier2_frequency, carrier2_amplitude, t, carrier2_x_shift, carrier2_y_shift);
end

modulated_signal = low_frequency_carrier .* (digital_signal == 0) + high_frequency_carrier .* (digital_signal ~= 0);
end


function [carrier_signal, final_signal] = psk_modulation(input_signal, t, carrier_frequency,carrier_amplitude, carrier_x_shift, carrier_y_shift)
carrier_signal = create_sine_signal(carrier_frequency, carrier_amplitude, t, carrier_x_shift, carrier_y_shift);
final_signal = carrier_signal .* (input_signal ~= 0) + create_sine_signal(carrier_frequency, carrier_amplitude, t, carrier_x_shift + (1/(2*carrier_frequency)), carrier_y_shift) .* (input_signal==0);
end

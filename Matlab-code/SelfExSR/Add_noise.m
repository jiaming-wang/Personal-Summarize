function [im_o] =  Add_noise(im_l,v)

noise     =  randn( size(im_l) );
noise     =  noise/sqrt(mean2(noise.^2));
im_o      =  double(im_l) + v*noise;

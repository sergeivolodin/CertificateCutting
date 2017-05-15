function c = example01_Rank_get(theta, phi)
c = [];
c(1) = 1;
c(2) = -2 * cos(theta) - 3 * cos(phi) * sin(theta) - sin(theta) * sin(phi);
c(3) = -29 * cos(theta)^2 - 32 * cos(theta) * cos(phi) * sin(theta) - ...
 16 * cos(phi)^2 * sin(theta)^2 + ...
 4 * cos(theta) * sin(theta) * sin(phi) - ...
 5 * cos(phi) * sin(theta)^2 * sin(phi) - ...
 7 * sin(theta)^2 * sin(phi)^2;
c(4) = 62 * cos(theta)^3 + 166 * cos(theta)^2 * cos(phi) * sin(theta) + ...
 104 * cos(theta) * cos(phi)^2 * sin(theta)^2 + ...
 19 * cos(phi)^3 * sin(theta)^3 + ...
 10 * cos(theta)^2 * sin(theta) * sin(phi) - ...
 16 * cos(theta) * cos(phi) * sin(theta)^2 * sin(phi) - ...
 9 * cos(phi)^2 * sin(theta)^3 * sin(phi) + ...
 8 * cos(theta) * sin(theta)^2 * sin(phi)^2 + ...
 4 * cos(phi) * sin(theta)^3 * sin(phi)^2 - ...
 2 * sin(theta)^3 * sin(phi)^3;
c(5) = 16 * cos(theta)^4 + 84 * cos(theta)^3 * cos(phi) * sin(theta) + ...
 148 * cos(theta)^2 * cos(phi)^2 * sin(theta)^2 + ...
 86 * cos(theta) * cos(phi)^3 * sin(theta)^3 + ...
 16 * cos(phi)^4 * sin(theta)^4 + ...
 86 * cos(theta)^3 * sin(theta) * sin(phi) + ...
 230 * cos(theta)^2 * cos(phi) * sin(theta)^2 * sin(phi) + ...
 114 * cos(theta) * cos(phi)^2 * sin(theta)^3 * sin(phi) + ...
 11 * cos(phi)^3 * sin(theta)^4 * sin(phi) + ...
 43 * cos(theta)^2 * sin(theta)^2 * sin(phi)^2 - ... 
 2 * cos(theta) * cos(phi) * sin(theta)^3 * sin(phi)^2 + ...
 8 * cos(phi) * sin(theta)^4 * sin(phi)^3 + ...
 4 * sin(theta)^4 * sin(phi)^4;
end


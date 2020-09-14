function theta0_size = plotJ(X, y)
% Plot cost function J for Simple Liner Regression given X and Y

% Grid over which to calculate J
theta0 = linspace(-10, 10, 101); % Break the space from -10 to 10 into 101
theta1 = theta0; % Consider scaling this if slopes are steep

% Initializations
theta0_size = length(theta0);
theta1_size = length(theta1);

%  J to a matrix of 0's
J = zeros(theta0_size, theta1_size);

% Fill out J
for i = 1:theta0_size
    for j = 1:theta1_size
	  t = [theta0(i); theta1(j)];
	  J(i,j) = computeCost(X, y, t);
    end
end


% Because of the way meshgrids work in the surf command, 
% J need to be transposed, or else the axes will be flipped
J = J';
% Surface plot
figure;
surf(theta0, theta1, J)
xlabel('\theta_0'); % 0 will be subscripted
ylabel('\theta_1');

% Contour plot
figure;
% Plot J as 20 contours spaced logarithmically between 0.01 and 100
contour(theta0, theta1, J, logspace(-2, 3, 20))
xlabel('\theta_0'); % 0 will be subscripted
ylabel('\theta_1');

end
function x = randGaussian(mu, sigma, n)
%% ������˹�漴����
m = length(mu);
x = repmat(mu(:)', n, 1) + randn(n,m) * chol(sigma);
end
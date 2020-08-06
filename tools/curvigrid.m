%-*-octave-*--
% CURVIGRID: Plot 1-D curvilinear mapping
%               
% function curvigrid( s, tau, zMax, Ncoarse, verbose )
%
% tau: elevation of topographhy (z = -tau)
% zMax: depth of bottom curvilinear grid = top cartesian grid
% Ncoarse: Number of grid points (integer)
% verbose: 1 for making a 1-D plot of the grid; default is 0 for no plotting
%
function z = curvigrid( s, tau, zMax, Ncoarse, verbose )

  if nargin < 5
    verbose=0;
  end

  if nargin < 4
    Ncoarse=50;
  end;

  hCart = zMax/(Ncoarse-1);
#  c1 = zMax + tau - hCart*(Ncoarse-1);
#  z = (1-s).*(-tau) + s.*(zMax + c1.*(1-s) + c1.*(1-s).^2);

  z = (1-s).*(-tau) + s.*(zMax); % linear case
  
%plot(s,"+");
  if (verbose)
    plot(s,z,"+");
    printf("z(Ncoarse)- z(Ncoarse-1)=%e, h=%e\n", z(Ncoarse)-z(Ncoarse-1), hCart);
  end

end





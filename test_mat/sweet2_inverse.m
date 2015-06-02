function a = sweet2_inverse ( )

%*****************************************************************************80
%
%% SWEET2_INVERSE returns the inverse of the SWEET2 matrix.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    19 February 2015
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Output, real A(6,6), the matrix.
%
  a = [ ...
  -0.188192659589482,  -0.145188896312202,   0.063613055049687, ...
   0.406962974759668,   0.271408731947181,  -0.526238847310597; ...
   0.324411348442568,   0.213721529181228,  -0.131983821377206, ...
  -0.344055452089408,  -0.168794206390780,   0.271408731947181; ...
   0.038585525550130,   0.275974273184732,   0.137312031652403, ...
  -0.366985595257679,  -0.344055452089408,   0.406962974759669; ...
  -0.105091418281329,  -0.159756451255461,   0.216482246086901, ...
   0.137312031652403,  -0.131983821377206,   0.063613055049687; ...
  -0.043938024069266,  -0.157319070822594,  -0.159756451255461, ...
   0.275974273184732,   0.213721529181228,  -0.145188896312202; ...
  -0.054227038968746,  -0.043938024069265,  -0.105091418281329, ...
   0.038585525550129,   0.324411348442568,  -0.188192659589482 ];

  return
end
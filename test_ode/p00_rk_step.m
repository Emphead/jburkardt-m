function y1 = p00_rk_step ( test, neqn, order, t0, y0, t1 )

%*****************************************************************************80
%
%% P00_RK_STEP takes a single Runge-Kutta step from (T0,Y0) to (T1,Y1).
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    17 February 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer TEST, the problem number.
%
%    Input, integer NEQN, the number of equations.
%
%    Input, integer ORDER, the order of the Runge-Kutta method to be
%    employed.  Legal values are 1 through 5.
%
%    Input, real T0, Y0(NEQN), the arguments of the derivative
%    function.
%
%    Input, real T1, the point at which an estimate of the solution
%    is desired.
%
%    Output, real Y1(NEQN), the estimated solution at T1.
%
  dt = t1 - t0;

  if ( order == 1 )

    yp0 = p00_fun ( test, neqn, t0, y0 );

    y1(1:neqn,1) = y0(1:neqn,1) + dt * yp0(1:neqn,1);

  elseif ( order == 2 )

    yp0 = p00_fun ( test, neqn, t0, y0 );

    yk1(1:neqn,1) = y0(1:neqn,1) + dt * yp0(1:neqn,1);

    tk1 = t0 + dt;

    ypk1 = p00_fun ( test, neqn, tk1, yk1 );

    y1(1:neqn,1) = y0(1:neqn,1) + dt * ( yp0(1:neqn,1) + ypk1(1:neqn,1) ) / 2.0;

  elseif ( order == 3 )

    yp0 = p00_fun ( test, neqn, t0, y0 );

    yk1(1:neqn,1) = y0(1:neqn,1) + 0.5 * dt * yp0(1:neqn,1);

    tk1 = t0 + 0.5 * dt;
    ypk1 = p00_fun ( test, neqn, tk1, yk1 );

    yk2(1:neqn,1) = y0(1:neqn,1) + dt * ( 2.0 * ypk1(1:neqn,1) - yp0(1:neqn,1) );

    tk2 = t0 + dt;
    ypk2 = p00_fun ( test, neqn, tk2, yk2 );

    y1(1:neqn,1) = y0(1:neqn,1) + ( dt / 6.0 ) ...
      * ( yp0(1:neqn,1) + 4.0 * ypk1(1:neqn,1) + ypk2(1:neqn,1) );

  elseif ( order == 4 )

    yp0 = p00_fun ( test, neqn, t0, y0 );

    yk1(1:neqn,1) = y0(1:neqn,1) + 0.5 * dt * yp0(1:neqn,1);

    tk1 = t0 + 0.5 * dt;

    ypk1 = p00_fun ( test, neqn, tk1, yk1 );

    yk2(1:neqn,1) = y0(1:neqn,1) + 0.5 * dt * ypk1(1:neqn,1);

    tk2 = t0 + 0.5 * dt;
    ypk2 = p00_fun ( test, neqn, tk2, yk2 );

    tk3 = t0 + dt;

    yk3(1:neqn,1) = y0(1:neqn,1) + dt * ypk2(1:neqn,1);

    ypk3 = p00_fun ( test, neqn, tk3, yk3 );

    y1(1:neqn,1) = y0(1:neqn,1) + ( dt / 6.0 ) * ( ...
                  yp0(1:neqn,1) ...
          + 2.0 * ypk1(1:neqn,1) ...
          + 2.0 * ypk2(1:neqn,1) ...
      +           ypk3(1:neqn,1) );

  elseif ( order == 5 )

    yp0 = p00_fun ( test, neqn, t0, y0 );

    yk1(1:neqn,1) = y0(1:neqn,1) + 0.25 * dt * yp0(1:neqn,1);

    tk1 = t0 + 0.25 * dt;

    ypk1 = p00_fun ( test, neqn, tk1, yk1 );

    yk2(1:neqn,1) = y0(1:neqn,1) + dt * ( ...
        3.0 * yp0(1:neqn,1) ...
      + 9.0 * ypk1(1:neqn,1) ) / 32.0;

    tk2 = t0 + 3.0 * dt / 8.0;

    ypk2 = p00_fun ( test, neqn, tk2, yk2 );

    yk3(1:neqn,1) = y0(1:neqn,1) + dt * ( ...
        1932.0 * yp0(1:neqn,1) ...
      - 7200.0 * ypk1(1:neqn,1) ...
      + 7296.0 * ypk2(1:neqn,1) ) / 2197.0;

    tk3 = t0 + 12.0 * dt / 13.0;

    ypk3 = p00_fun ( test, neqn, tk3, yk3 );

    yk4(1:neqn,1) = y0(1:neqn,1) + dt * ( ...
      + (  439.0 /  216.0 ) * yp0(1:neqn,1) ...
      -      8.0            * ypk1(1:neqn,1) ...
      + ( 3680.0 /  513.0 ) * ypk2(1:neqn,1) ...
      - (  845.0 / 4104.0 ) * ypk3(1:neqn,1) );

    tk4 = t0 + dt;

    ypk4 = p00_fun ( test, neqn, tk4, yk4 );

    yk5(1:neqn,1) = y0(1:neqn,1) + dt * ( ...
      - (    8.0 /   27.0 ) * yp0(1:neqn,1) ...
      + (    2.0          ) * ypk1(1:neqn,1) ...
      - ( 3544.0 / 2565.0 ) * ypk2(1:neqn,1) ...
      + ( 1859.0 / 4104.0 ) * ypk3(1:neqn,1) ...
      - (   11.0 /   40.0 ) * ypk4(1:neqn,1) );

    tk5 = t0 + 0.5 * dt;

    ypk5 = p00_fun ( test, neqn, tk5, yk5 );

    y1(1:neqn,1)  = y0(1:neqn,1) + dt * ( ...
        (    16.0 / 135.0   ) * yp0(1:neqn,1) ...
      + (  6656.0 / 12825.0 ) * ypk2(1:neqn,1) ...
      + ( 28561.0 / 56430.0 ) * ypk3(1:neqn,1) ...
      - (     9.0 / 50.0    ) * ypk4(1:neqn,1) ...
      + (     2.0 / 55.0    ) * ypk5(1:neqn,1) );

  else
    fprintf ( 1, '\n' );
    fprintf ( 1, 'P00_RK_STEP - Fatal error!\n' );
    fprintf ( 1, '  Unavailable Runge Kutta order = %d\n', order );
    error ( 'P00_RK_STEP - Fatal error!' );
  end

  return
end

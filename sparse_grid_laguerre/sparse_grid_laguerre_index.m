function [ grid_index, grid_base ] = sparse_grid_laguerre_index ( dim_num, ...
  level_max, point_num )

%*****************************************************************************80
%
%% SPARSE_GRID_LAGUERRE_INDEX: index sparse grid Gauss-Laguerre points.
%
%  Discussion:
%
%    The sparse grid is assumed to be formed from 1D Gauss-Laguerre rules.
%
%    The necessary dimensions of GRID_INDEX can be determined by 
%    calling SPARSE_GRID_LAGUERRE_SIZE first.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    05 July 2008
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Fabio Nobile, Raul Tempone, Clayton Webster,
%    A Sparse Grid Stochastic Collocation Method for Partial Differential
%    Equations with Random Input Data,
%    SIAM Journal on Numerical Analysis,
%    Volume 46, Number 5, 2008, pages 2309-2345.
%
%  Parameters:
%
%    Input, integer DIM_NUM, the spatial dimension.
%
%    Input, integer LEVEL_MAX, the maximum value of LEVEL.
%
%    Input, integer POINT_NUM, the total number of points in 
%    the grids.
%
%    Output, integer GRID_INDEX(DIM_NUM,POINT_NUM), a list of 
%    point indices, representing a subset of the product grid of level 
%    LEVEL_MAX, representing (exactly once) each point that will show up in a
%    sparse grid of level LEVEL_MAX.
%
%    Output, integer GRID_BASE(DIM_NUM,POINT_NUM), a list of 
%    the orders of the rules associated with each point 
%    and dimension.
%

%
%  The outer loop generates LEVELs from LEVEL_MIN to LEVEL_MAX.
%
  point_num2 = 0;

  level_min = max ( 0, level_max + 1 - dim_num );
  
  for level = level_min : level_max
%
%  The middle loop generates the next partition LEVEL_1D(1:DIM_NUM)
%  that adds up to LEVEL.
%
    level_1d = [];
    more = false;
    h = 0;
    t = 0;

    while ( 1 )

      [ level_1d, more, h, t ] = comp_next ( level, dim_num, level_1d, more, h, t );
%
%  Transform each 1D level to a corresponding 1D order.
%  The relationship is the same as for other OPEN rules.
%  The Gauss-Hermite rule differs from the other OPEN rules only in the nesting behavior.
%
      order_1d = level_to_order_open ( dim_num, level_1d );

      grid_base2(1:dim_num) = order_1d(1:dim_num);
%
%  The product of the 1D orders gives us the number of points in this subgrid.
%
      order_nd = prod ( order_1d(1:dim_num) );
%
%  The inner (hidden) loop generates all points corresponding to given grid.
%  The grid indices will be between 1 and ORDER_1D(DIM).
%
      grid_index2 = multigrid_index_one ( dim_num, order_1d, order_nd );

      for point = 1 : order_nd

        point_num2 = point_num2 + 1;

        grid_index(1:dim_num,point_num2) = grid_index2(1:dim_num,point);
        grid_base(1:dim_num,point_num2) = grid_base2(1:dim_num);

      end

      if ( ~more )
        break
      end

    end

  end

  return
end

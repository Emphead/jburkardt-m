function [ n, indx ] = r8vec_indexed_heap_d_insert ( n, a, indx, indx_insert )

%*****************************************************************************80
%
%% R8VEC_INDEXED_HEAP_D_INSERT: insert value into heap descending indexed R8VEC.
%
%  Discussion:
%
%    An R8VEC is a vector of R8's.
%
%    An indexed R8VEC is an R8VEC of data values, and an R8VEC of N indices,
%    each referencing an entry of the data vector.
%
%    Note that the argument N must be a variable, and will be incremented before
%    return, and that INDX must be able to hold one more entry on output than
%    it held on input.
%
%    This is one of three functions needed to model a priority queue.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    17 August 2010
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Thomas Cormen, Charles Leiserson, Ronald Rivest,
%    Introduction to Algorithms,
%    MIT Press, 2001,
%    ISBN: 0262032937,
%    LC: QA76.C662.
%
%  Parameters:
%
%    Input, integer N, the number of items in the
%    index vector.
%
%    Input, real A(*), the data vector.
%
%    Input, integer INDX(N), the index vector.
%
%    Input, integer INDX_INSERT, the index in A of the value
%    to be inserted into the heap.
%
%    Output, integer N, the number of items in the revised index vector.
%
%    Output, integer INDX(N), the revised index vector.
%
  n = n + 1;
  i = n;

  while ( 1 < i )

    parent = floor ( i / 2 );

    if ( a(indx_insert) <= a(indx(parent)) )
      break
    end

    indx(i) = indx(parent);
    i = parent;

  end

  indx(i) = indx_insert;

  return
end

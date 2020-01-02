program gci_ddot
    implicit none

    integer :: n
    double precision ddot
    double precision, allocatable :: x(:), y(:)

    print *, "Computes dot product of x and y"

    write(*, fmt="(A)", advance="no") "Number of dimensions in x and y: "
    read(*, *) n

    allocate(x(n))
    allocate(y(n))

    write(*, fmt="(A)", advance="no") "Input vector x: "
    read(*, *) x

    write(*, fmt="(A)", advance="no") "Input vector y: "
    read(*, *) y

    print "(A, F0.5)", "Dot product: ", ddot(n, x, 1, y, 1)

    deallocate(x)
    deallocate(y)
end program gci_ddot

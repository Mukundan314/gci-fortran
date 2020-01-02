program gci_saxpy
    implicit none

    integer :: n
    real :: alpha
    real, allocatable :: x(:), y(:)

    print *, "Computes alpha*x + y"

    write(*, fmt="(A)", advance="no") "Input scalar alpha: "
    read(*, *) alpha

    write(*, fmt="(A)", advance="no") "Number of dimensions in x and y: "
    read(*, *) n

    allocate(x(n))
    allocate(y(n))

    write(*, fmt="(A)", advance="no") "Input vector x: "
    read(*, *) x

    write(*, fmt="(A)", advance="no") "Input vector y: "
    read(*, *) y

    call saxpy(n, alpha, x, 1, y, 1)

    print "(A, *(2X, F0.5))", "Output vector: ", y

    deallocate(x)
    deallocate(y)
end program gci_saxpy

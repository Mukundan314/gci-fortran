program gci_dgemv
    implicit none

    integer :: n, m, i
    double precision :: alpha, beta
    double precision, allocatable :: a(:, :), x(:), y(:)

    print *, "Computes alpha*A*x + beta*y"

    write(*, fmt="(A)", advance="no") "Input scalar alpha: "
    read(*, *) alpha

    write(*, fmt="(A)", advance="no") "Number of rows in matrix a: "
    read(*, *) m

    write(*, fmt="(A)", advance="no") "Number of columns in matrix a: "
    read(*, *) n

    allocate(a(m, n))
    allocate(x(n))
    allocate(y(m))

    do i = 1, m
        write(*, fmt="(A,I0,A)", advance="no") "Enter ", i, "-th row of matrix a: "
        read(*, *) a(i, :)
    enddo

    write(*, fmt="(A)", advance="no") "Input vector x: "
    read(*, *) x

    write(*, fmt="(A)", advance="no") "Input scalar beta: "
    read(*, *) beta

    write(*, fmt="(A)", advance="no") "Input vector y: "
    read(*, *) y

    call dgemv("N", m, n, alpha, a, m, x, 1, beta, y, 1)

    print "(A, *(2X, F0.5))", "Output vector: ", y

    deallocate(a)
    deallocate(x)
    deallocate(y)
end program gci_dgemv

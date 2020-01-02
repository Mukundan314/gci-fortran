program gci_dgemv
    implicit none

    integer :: n, m, k, i
    double precision :: alpha, beta
    double precision, allocatable :: a(:, :), b(:, :), c(:, :)

    print *, "Computes alpha*A*B + beta*C"

    write(*, fmt="(A)", advance="no") "Input scalar alpha: "
    read(*, *) alpha

    write(*, fmt="(A)", advance="no") "Number of rows in matrix a: "
    read(*, *) m

    write(*, fmt="(A)", advance="no") "Number of columns in matrix a: "
    read(*, *) k

    write(*, fmt="(A)", advance="no") "Number of columns in matrix b: "
    read(*, *) n

    allocate(a(m, k))
    allocate(b(k, n))
    allocate(c(m, n))

    do i = 1, m
        write(*, fmt="(A,I0,A)", advance="no") "Enter ", i, "-th row of matrix a: "
        read(*, *) a(i, :)
    enddo

    do i = 1, k
        write(*, fmt="(A,I0,A)", advance="no") "Enter ", i, "-th row of matrix b: "
        read(*, *) b(i, :)
    enddo

    write(*, fmt="(A)", advance="no") "Input scalar beta: "
    read(*, *) beta

    do i = 1, m
        write(*, fmt="(A,I0,A)", advance="no") "Enter ", i, "-th row of matrix c: "
        read(*, *) c(i, :)
    enddo

    call dgemm("N", "N", m, n, k, alpha, a, m, b, k, beta, c, m)

    print "(A)", "Output matrix:"
    do i = 1, m
        print "(*(2X, F10.5))", c(i, :)
    enddo

    deallocate(a)
    deallocate(b)
    deallocate(c)
end program gci_dgemv

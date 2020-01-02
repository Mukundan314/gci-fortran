FC=gfortran
FCFLAGS=-std=f95 -llapack -lblas

.PHONY: all
all: gci_saxpy gci_ddot gci_dgemv gci_dgemm

.PHONY: clean
clean:
	rm -f gci_saxpy gci_ddot gci_dgemv gci_dgemm

gci_saxpy: gci_saxpy.f90
	$(FC) $(FCFLAGS) -o gci_saxpy gci_saxpy.f90

gci_ddot: gci_ddot.f90
	$(FC) $(FCFLAGS) -o gci_ddot gci_ddot.f90

gci_dgemv: gci_dgemv.f90
	$(FC) $(FCFLAGS) -o gci_dgemv gci_dgemv.f90

gci_dgemm: gci_dgemm.f90
	$(FC) $(FCFLAGS) -o gci_dgemm gci_dgemm.f90




ifeq ($(COMPILER), XLC)

OMP_FLAGS += -qsmp
CXXFLAGS += -O3 
CXX= mpixlcxx_r

else

OMP_FLAGS += -fopenmp
CXXFLAGS += -O3 -march=native

endif


# submodules
MODULES := mandelbrot

.PHONY: default


export 

default:
	cd mandelbrot && $(MAKE)


clean:
	cd mandelbrot && $(MAKE) clean







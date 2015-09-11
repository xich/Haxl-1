BENCH=./dist/build/monadbench/monadbench

test: build
	$(BENCH) par1 250000
	$(BENCH) par1 500000
	$(BENCH) par1 1000000
	$(BENCH) par2 125000
	$(BENCH) par2 250000
	$(BENCH) par2 500000
	$(BENCH) seql 10000
	$(BENCH) seql 20000
	$(BENCH) seql 30000
	$(BENCH) seqr 2500000
	$(BENCH) seqr 5000000
	$(BENCH) seqr 10000000
	$(BENCH) tree 17
	$(BENCH) tree 18
	$(BENCH) tree 19

build:
	cabal build

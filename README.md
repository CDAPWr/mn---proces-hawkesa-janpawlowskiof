Użyty dataset znajduje się [tutaj](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi%3A10.7910%2FDVN%2F6Z3CGX).
Opisuje wiadomości email wysyłane wewnątrz firmy. Są to dane, które zdają się dość dobrze dać opiasć poprzez kaskady.

Jako jedna kaskada traktuję wiadomości wysyłane do i od zadanego pracownika.
W tym wypadku losowo wybrani zostali pracownicy 84 i 118. Preprocessing odbywa się poprzed uruchomienie pliku `preprocess.py`

Kod źródłowy fitujący modele znajduje się w pliku `main.R`. 
Niestety poległem w walce z segfaultami uruchamiając wszystko w notebooku.

Output tekstowy programu:
```
➜  hawkes Rscript main.R  
[1] "-------------------------User 84: Krenel EXP-------------------------"
Cannot find "lgo"
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
- Model: EXP 
- No. of cascades: 1 
- init_par:
  K 6.87e-02; theta 2.14e-01
- par:
  K 8.63e-01; theta 6.00e-05
- Neg Log Likelihood: 55.4604 
- lower_bound:
  K 1.00e-100; theta 1.00e-100
- upper_bound:
  K 1.00e+04; theta 3.00e+02
- Convergence: 0 
[1] "branching factor:"
[1] 0.86319
[1] "final population:"
[1] 697.3094
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
[1] "-------------------------User 84: Krenel mEXP-------------------------"
Cannot find "lgo"
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
- Model: mEXP 
- No. of cascades: 1 
- init_par:
  K 1.00e-01; beta 1.00e-03; theta 1.00e-04
- par:
  K 7.93e-01; beta 2.10e-01; theta 6.28e-05
- Neg Log Likelihood: 55.403 
- lower_bound:
  K 1.00e-100; beta 1.00e-100; theta 1.00e-100
- upper_bound:
  K 1.00e+04; beta 1.02e+00; theta 3.00e+02
- Convergence: 0 
[1] "branching factor:"
[1] 0.9999984
[1] "final population:"
[1] 95152.48
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
[1] "-------------------------User 118: Krenel EXP-------------------------"
Cannot find "lgo"
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
- Model: EXP 
- No. of cascades: 1 
- init_par:
  K 1.00e-01; theta 1.00e-04
- par:
  K 1.00e+00; theta 1.80e-05
- Neg Log Likelihood: 35.2982 
- lower_bound:
  K 1.00e-100; theta 1.00e-100
- upper_bound:
  K 1.00e+04; theta 3.00e+02
- Convergence: 0 
[1] "branching factor:"
[1] 0.999998
[1] "final population:"
[1] 729870.8
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
[1] "-------------------------User 118: Krenel mEXP-------------------------"
Cannot find "lgo"
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
- Model: mEXP 
- No. of cascades: 1 
- init_par:
  K 1.00e-01; beta 1.00e-03; theta 1.00e-04
- par:
  K 2.64e-01; beta 7.47e-01; theta 1.40e-05
- Neg Log Likelihood: 34.5114 
- lower_bound:
  K 1.00e-100; beta 1.00e-100; theta 1.00e-100
- upper_bound:
  K 1.00e+04; beta 1.02e+00; theta 3.00e+02
- Convergence: 0 
[1] "branching factor:"
[1] 0.9999993
[1] "final population:"
[1] 2194564
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
```

Nie udało mi się dotrzeć do tego skąd wiadomość ```In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.```
W datasecie same timestampy są silnie rosnące. 

Można zaobserwować, że w przypadku użytkownica 84 model EXP jak widać w miarę trafnie przewiduje rozmiar populacji.
Model mEXP z kolei ekspoldował.

Przykładowy wykres model EXP na użytkowniku 84 ![plot](plot_84_exp.png)


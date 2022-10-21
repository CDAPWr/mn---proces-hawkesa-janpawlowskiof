Użyty dataset znajduje
się [tutaj](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi%3A10.7910%2FDVN%2F6Z3CGX).
Opisuje wiadomości email wysyłane wewnątrz firmy. Są to dane, które zdają się dość dobrze dać opiasć poprzez kaskady.

Jako jedna kaskada traktuję wiadomości wysyłane do i od zadanego pracownika.
W tym wypadku losowo wybrani zostali pracownicy 84 i 118. Preprocessing odbywa się poprzed uruchomienie
pliku `preprocess.py`

Kod źródłowy fitujący modele znajduje się w pliku `main.R`.
Niestety poległem w walce z segfaultami uruchamiając wszystko w notebooku.

Output tekstowy programu:

```
➜  mn---proces-hawkesa-janpawlowskiof git:(main) ✗ Rscript main.R
[1] "-------------------------User 84: Krenel EXP-------------------------"
Cannot find "lgo"
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
- Model: EXP 
- No. of cascades: 1 
- init_par:
  K 7.78e+00; theta 1.17e+00
- par:
  K 1.00e+00; theta 3.00e+02
- Neg Log Likelihood: -1219.49 
- lower_bound:
  K 1.00e-100; theta 1.00e-100
- upper_bound:
  K 1.00e+04; theta 3.00e+02
- Convergence: 0 
[1] "branching factor:"
[1] 1
[1] "final population:"
[1] Inf
Warning message:
In predict_final_popularity.hawkes(fitted_model_exp) :
  Branching Factor greater than 1, not possible to predict the size(super critical)
[1] "-------------------------User 84: Krenel mEXP-------------------------"
Cannot find "lgo"
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
- Model: mEXP 
- No. of cascades: 1 
- init_par:
  K 8.17e+00; beta 3.90e-01; theta 2.48e+00
- par:
  K 1.00e+00; beta 1.00e-100; theta 3.00e+02
- Neg Log Likelihood: -1219.49 
- lower_bound:
  K 1.00e-100; beta 1.00e-100; theta 1.00e-100
- upper_bound:
  K 1.00e+04; beta 1.02e+00; theta 3.00e+02
- Convergence: 0 
[1] "branching factor:"
[1] 1
[1] "final population:"
[1] Inf
Warning message:
In predict_final_popularity.hawkes(fitted_model_mexp) :
  Branching Factor greater than 1, not possible to predict the size(super critical)
[1] "-------------------------User 118: Krenel EXP-------------------------"
Cannot find "lgo"
Warning message:
In FUN(X[[i]], ...) :
  The provided observation time is smaller than the last observed event! Attempt to slice the data.
- Model: EXP 
- No. of cascades: 1 
- init_par:
  K 6.56e+00; theta 1.25e+00
- par:
  K 9.95e-01; theta 3.00e+02
- Neg Log Likelihood: -1043.29 
- lower_bound:
  K 1.00e-100; theta 1.00e-100
- upper_bound:
  K 1.00e+04; theta 3.00e+02
- Convergence: 0 
[1] "branching factor:"
[1] 0.994722
[1] "final population:"
[1] 501.4616
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
  K 7.24e+00; beta 4.84e-02; theta 2.99e+00
- par:
  K 9.12e-01; beta 8.95e-02; theta 3.00e+02
- Neg Log Likelihood: -1043.72 
- lower_bound:
  K 1.00e-100; beta 1.00e-100; theta 1.00e-100
  - upper_bound:
  K 1.00e+04; beta 1.02e+00; theta 3.00e+02
- Convergence: 0 
[1] "branching factor:"
[1] 0.9999996
[1] "final population:"
[1] 6700.334

```

Nie udało mi się dotrzeć do tego skąd wiadomość ```In FUN(X[[i]], ...) :
The provided observation time is smaller than the last observed event! Attempt to slice the data.```
W datasecie same timestampy są silnie rosnące.

Można zaobserwować, że w przypadku użytkownica 84 model EXP i mEXP zachowują się w względnie podobnie.
Przykładowy wykres model EXP na użytkowniku 84 ![plot](plot_84_exp.png)

Model prawdopodobnie nie radzi sobie dobrze z danymi z racji na ich cykliczną naturę.

{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "3a44c072",
   "metadata": {},
   "source": [
    "## PARTIE 1 — Base de connaissances statique"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "41fe01f2",
   "metadata": {},
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "UsageError: Cell magic `%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%` not found.\n"
     ]
    }
   ],
   "source": [
    "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n",
    "% PARTIE 1 — BASE DE CONNAISSANCES STATIQUE\n",
    "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n",
    "\n",
    "% Liste de symptômes utilisés :\n",
    "% fievre, toux, mal_gorge, fatigue, courbatures,\n",
    "% mal_tete, eternuements, nez_qui_coule.\n",
    "\n",
    "% Exemple de symptômes pour des patients fictifs\n",
    "symptome(p1, fievre).\n",
    "symptome(p1, toux).\n",
    "symptome(p1, fatigue).\n",
    "\n",
    "symptome(p2, mal_gorge).\n",
    "symptome(p2, fievre).\n",
    "\n",
    "symptome(p3, eternuements).\n",
    "symptome(p3, nez_qui_coule).\n",
    "\n",
    "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n",
    "% RÈGLES DES MALADIES (statiques)\n",
    "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n",
    "\n",
    "% Grippe : fièvre + courbatures + fatigue + (toux possible)\n",
    "maladie(grippe, Patient) :-\n",
    "    symptome(Patient, fievre),\n",
    "    symptome(Patient, courbatures),\n",
    "    symptome(Patient, fatigue).\n",
    "\n",
    "% Angine : mal de gorge + fièvre\n",
    "maladie(angine, Patient) :-\n",
    "    symptome(Patient, mal_gorge),\n",
    "    symptome(Patient, fievre).\n",
    "\n",
    "% Covid (simplifié) : fièvre + toux + fatigue\n",
    "maladie(covid, Patient) :-\n",
    "    symptome(Patient, fievre),\n",
    "    symptome(Patient, toux),\n",
    "    symptome(Patient, fatigue).\n",
    "\n",
    "% Allergie : éternuements + nez qui coule + PAS de fièvre\n",
    "maladie(allergie, Patient) :-\n",
    "    symptome(Patient, eternuements),\n",
    "    symptome(Patient, nez_qui_coule),\n",
    "    \\+ symptome(Patient, fievre).\n",
    "\n",
    "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n",
    "% Diagnostic statique\n",
    "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n",
    "\n",
    "diagnostic(Patient, Maladie) :-\n",
    "    maladie(Maladie, Patient).\n"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.13.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}

# DTMF Signal Processing and Time-Frequency Analysis in MATLAB

## 📚 Overview

This project, developed as part of the **Digital Signal Processing Basics (ECE 451s)** course at Ain Shams University, explores **Dual-Tone Multi-Frequency (DTMF)** signal generation and decoding using **MATLAB**. It also covers **time-frequency analysis** through spectrograms using both rectangular and Blackman windows, highlighting trade-offs between time and frequency resolution.

## 🎯 Objectives

- Understand and generate DTMF signals.
- Perform time-frequency analysis using spectrograms.
- Explore frequency resolution vs. time resolution trade-offs.
- Decode noisy DTMF sequences using the **Goertzel algorithm**.

## 🛠️ Features

- `sym2TT(S)`: Generate DTMF tones for a given symbol.
- Sequence generator with guard intervals based on a phone number.
- Additive white Gaussian noise simulation.
- Save noisy signal as `.wav` audio file.
- Plot time-domain and frequency-domain representations.
- Generate spectrograms with multiple window sizes.
- Evaluate effects of different window types (rectangular vs. Blackman).
- Decode DTMF tones using the Goertzel algorithm.

## 🧪 Technologies

- MATLAB
- DSP concepts: DFT, FFT, spectrograms, windowing
- MATLAB built-ins: `fft`, `audiowrite`, `imagesc`, `goertzel`, etc.

## 📈 Results

- Time-domain and frequency-domain plots of DTMF tones.
- Spectrograms showing how window size and type affect resolution.
- Decoding success validated against the original phone number.




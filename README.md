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

## ▶️ How to Run

1. Clone or download this repository.
2. Open the `.m` files in MATLAB.
3. Run the script `main.m` (or your primary driver file).
4. Ensure the required audio and signal processing toolboxes are installed.
5. Inspect generated waveforms, spectrograms, and decoded outputs.

## 📂 Files

- `sym2TT.m`: Function to generate a 100ms DTMF tone.
- `generate_sequence.m`: Create a tone sequence with guard intervals.
- `add_noise.m`: Add white Gaussian noise.
- `save_audio.m`: Export signal as `.wav`.
- `plot_time_freq.m`: Plot waveforms and FFTs.
- `generate_spectrograms.m`: Create spectrograms with various windows.
- `decode_goertzel.m`: Decode noisy DTMF tones.
- `report.pdf`: Detailed report with results and analysis.
- `output.wav`: Generated noisy audio signal.

## 📈 Results

- Time-domain and frequency-domain plots of DTMF tones.
- Spectrograms showing how window size and type affect resolution.
- Decoding success validated against the original phone number.

## 👥 Contributors

- Group members of ECE 451s, Fall 2022  
- Ain Shams University - Faculty of Engineering

## 📄 License

This project is for academic use only. No commercial license is granted.

---

Feel free to modify `README.md` based on your actual filenames and group member names.


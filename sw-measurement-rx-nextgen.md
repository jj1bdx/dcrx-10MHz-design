# Shortwave measurement receiver next generation

To be disclosed once the related hardware and code is open

## Receiver hardware capability

* For fixed receiving frequency
  - GPSDO locked
* Direct conversion
* Frequencies: 9999kHz (10000 - 1 kHz) first
* No AGC
* Output: connected to an audio interface input

### Design 1: HamSCI Grape 1

* See [HamSCI Grape 1](https://www.hamsci.org/grape1) web page
* [Leo Bodnar Mini GPSDO](http://www.leobodnar.com/shop/index.php?main_page=product_info&cPath=107&products_id=301&zenid=ce43e938bde16b843f6a94d6ea4e024b) required

### Design 2: Generic SW direct-conversion RX

#### Signal flow

* RX ANT
* Bandpass filter (50ohm, -6dB, BW 100kHz)
* Generic amplifier (Low NF, Gain: 10 ~ 20dB, high IP3)
* Double-balanced Mixer (DBM) ([Mini-Circuit ADE-R1LH+](https://mcl-yokohama.co.jp/webdata/ADE-R1LH.pdf)) with [Leo Bodnar Mini GPSDO](http://www.leobodnar.com/shop/index.php?main_page=product_info&cPath=107&products_id=301&zenid=ce43e938bde16b843f6a94d6ea4e024b) for LO signal (with 3dB or more 50ohm ATT)
* Audio LPF (~3kHz)
* High-gain audio amplifier (~70dB or even more)
* Audio output, finally

#### How to build

* Build as modular boards?
* Mixer kit: [GPIO Labs: RF Design Kit for Mixer Mini-Circuits ADE, JMS series RF Mixers](https://gpio.com/collections/kits/products/rf-design-kit-for-mixer-mini-circuits-ade-jms-series-rf-mixers)
* Generic amplifier example: [GPIO Labs: Low Noise Amplifier 100 kHz - 2000 MHz with 30dB Gain](https://gpio.com/collections/low-noise-amplifiers/products/low-noise-amplifier-100-khz-2000-mhz-with-30db-gain)
* DBM purchasing in Japan: [Mini-Circuit Yokohama: ADE-R1LH+](https://shop.mcl-yokohama.co.jp/items/31630259)

## Receiver software capability

* Target: macOS/Linux
* Audio sampling frequency: 8kHz
* Sampling frequency calibration by fractional resampling
  - At least for +-200ppm
  - Is libsoxr capable to do this?
  - How does fldigi do this?

[More to go...]
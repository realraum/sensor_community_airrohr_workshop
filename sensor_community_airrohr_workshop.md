---
marp: true
footer: Presented by xro
theme: default
size: 16:9
paginate: true
---

![width:20%](https://raw.githubusercontent.com/realraum/logo/master/logo-red.svg)
# realraum AirRohr Bastel Workshop

---
# Die Map

![bg](img/Screenshot_map_graz.jpg)

---

# Die Map ist groß

![bg](img/Screenshot_map_europe.jpg)

http://sensor.community

---
# Mögliche Hacks

![bg right:60% fit](img/sha_badge_anzeige.jpg)

---

# Voraussetzungen

- Hardware
- idealer Montageort
  - WLAN Empfang
  - 1,5m bis 3,5m über der Straße
  - gut belüftet.
  - Abweichungen bei Anmeldung angeben

---

# Beispiel Airrohr Feinstaubsensor

![bg right:50%](img/airrohr_am_fenster.JPG)

- klassisch
- straßenseitig
- guter WLAN Empfang
- ca 3,5m Höhe

---
# Beispiel Airrohr als Box

![bg right:40%](img/airbox_im_innenhof2.JPG)

- unscheinbare Box
- 1m Höhe
- knapper WLAN Empfang
- Innenhof


---
# WLAN Distanz überbrücken

![bg right:40%](img/wifi_outdoor_antenna.jpg)

- e.g. [Amazon](https://www.amazon.com/TP-Link-Long-Range-Outdoor-Transmitter/dp/B07YX8NPFL/)
- Hilfe im realraum oder bei Funkfeuer holen

---
# Account registrieren

[http://devices.sensor.community](https://devices.sensor.community/)

![width:60%](img/Screenshot_my_sensors.png)

---

# Airrohr Flashing Tool

![bg right:40% fit](img/qr_airrohr_flashing_tool.svg)

![img](img/Screenshot_airrorh_flasher.png)

---
# Zuverlässig FlashingTool zum Laufen bekommen

```
git clone https://github.com/opendata-stuttgart/airrohr-firmware-flasher
cd airrohr-firmware-flasher
python -m venv airrohr_venv             # Python Virtual Env anlegen
source ./airrohr_venv/bin/activate      # Python Virtual Env aktivieren
echo Versionen von pyqt5-sip und pyqt5 entfernen:
vim requirements.txt
pip3 install -r requirements.txt        # Deps installieren
```

Tool starten
```
./airrohr_venv/bin/python3 ./airrohr-flasher.py
```

Serial Monitor - Check of Firmware etwas tut
```
python3 -m serial.tools.miniterm /dev/ttyUSB0 9600
```
---

# Airrohr Bauanleitung

![bg right:40% fit](img/qr_sensor_bauanleitung_airrohr.svg)

- [Anleitung](https://sensor.community/de/sensors/airrohr/)

![img](img/sds011-jammed-into-tube.jpeg)

[Soldering Tipps, falls nötig](https://mightyohm.com/files/soldercomic/FullSolderComic_EN.pdf)

---

# Kit Inhalt

- SDS011 [Amazon](https://www.amazon.de/s?k=sds011)
- JumperWire f/f x4
- ESP8266 NodemMCU
- BMP280 (mit Aufpreis BME280)
- Fliegengitterstück [Obi](https://www.obi.at/insektenschutznetze/windhager-is-fliegengitter-anthrazit-130-cm-x-220-cm/p/1815869)
- Marley HT-Bogen DN 75 Grau [Obi](https://www.obi.at/ht-boegen/marley-ht-bogen-87-dn-75-grau/p/2010577), [Hellweg](https://www.hellweg.at/ht-bogen-75-mm/197275)
- optional AirRohr PCB + extra C1
- optional micro-USB-Kabel


---
# Success

![bg right:36% fit](img/Screenshot_esp8266_webpage_working_sensor.png)

- Sensor registrieren auf [http://devices.sensor.community](https://devices.sensor.community/)
- Sensor ID ablesen
  - links oben auf Webseite des ESP8266 wenn im WLAN
  - oder am Airrohr-Flasher-Tool in der Statusleiste, wenn via USB verbunden

---
# Sensor registrieren

![width:80%](img/Screenshot_register_sensor.png)

---
# WLAN neu konfigurieren

- Daheim eigenes WLAN konfigurieren
- Findet Sensor Workshop-WLAN nicht mehr, macht er einen AccessPoint auf
  - auf dessen Webseite, kann WLAN konfiguriert werden
- Alternativ: Airrohr-FlashingTool verwenden
  - Configuration-Tab flasht via USB direkt WIFI config auf den ESP8266

---

# DMNS Bauanleitung

![bg right:40% fit](img/qr_sensor_bauanleitung_dmns.svg)

![img](img/dnms-noise-measuring-sensor-kit.jpg)

---


# DMNS Standort Wetterschutz

- Schaumstoffabdeckung unbedingt nötig
- notfalls Haushaltsschwamm

Weil:
- schützt vor Windgeräuschen
- schützt vor Wasseraustritt Kondenswasser
- schützt vor Sonneneinstrahlung

![bg right contain](img/measuring-sensor-on-terasse.jpg)

---

# DMNS Standort Microphon

- möglichst "freier" Bereich zu platzieren
  - möglichst wenig schallreflektierenden Flächen
  - Der Abstand zu reflektierenden Flächen sollte so groß wie möglich sein.
  - nicht direkt an einer Hauswand
    - idealerweise mehr als 1 m betragen.
    - 50cm ist minimum
  - Gute Plätze sind 
    - z.B. Balkone oder Terrassengeländer
    - direkt an der Hausecke, damit sich Reflexionen auslöschen.
- Je näher man jedoch an die Geräusch-Quelle herankommt, desto besser
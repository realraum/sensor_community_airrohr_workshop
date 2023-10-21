---
marp: true
footer: Presented by xro
theme: default
size: 16:9
paginate: true
---

# realraum AirRohr Bastel Workshop

## DIY Feinstaubsensor

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

# Beispiel Montage

## Airrohr

![bg right:50%](img/airrohr_am_fenster.JPG)

- klassisch
- straßenseitig
- guter WLAN Empfang
- 503cm Höhe

---
# Beispiel Montage

## Airrohr

![bg right:50% fit](img/r3_airrohr_mounted.jpg)

- klassich
- straßenseitig
- mittelguter WLAN Empfang hinter Eisen
- 257cm Höhe
- der r3 Sensor
---

![bg fit](img/r3_airrohr_mounted2.jpg)

---
# Beispiel Montage 

## Box

![bg right:40%](img/airbox_im_innenhof2.JPG)

- unscheinbare Box
- ca 1m Höhe
- knapper WLAN Empfang
- Innenhof


---
# Workshop Ablauf

1. sensor.community Account registrieren
2. µC Firmware flashen + ID aufschreiben
3. Sensor in eigenem sensor.community Account registrieren
4. am µC Sensoren & lokales WIFI konfigurieren
5. Sensor physisch zusammenbauen

---
# Link zu den Folien

- verlinkt in Seite zum Termin / Event / Talk
- https://realraum.github.io/sensor_community_airrohr_workshop/

![bg right:40% contain](img/qr_github_these_slides.svg)

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

# Sensor Configuration

via Firmware-Webpage and Accesspoint

- SDS011
- BME280

Sensor ID ablesen und notieren!

![bg right:50% fit](img/Screenshot_esp8266_webpage_sensor_config_page.png)

---
# Sensor ID registrieren

![bg right:36% fit](img/Screenshot_esp8266_webpage_working_sensor.png)

- Sensor registrieren auf [http://devices.sensor.community](https://devices.sensor.community/)
- Sensor ID ablesen
  - links oben auf Webseite des ESP8266 wenn im WLAN
  - oder am Airrohr-Flasher-Tool in der Statusleiste, wenn via USB verbunden

---

![bg fit](img/Screenshot_register_sensor.png)

---

# Airrohr Bauanleitung

![bg right:40% fit](img/qr_sensor_bauanleitung_airrohr.svg)

- [Anleitung](https://sensor.community/de/sensors/airrohr/), auch gut am Handy zu lesen

![img](img/sds011-jammed-into-tube.jpeg)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Soldering Tipps, falls nötig](https://mightyohm.com/files/soldercomic/FullSolderComic_EN.pdf)

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

![bg fit](img/airrohr-wiring-sds011-bme280.jpg)

---

![bg](img/r3_airrohr_pcb.jpg)

---

![bg](img/r3_airrohr_assembled.jpg)


---
# WLAN neu konfigurieren

![bg right:45% fit](img/Screenshot_esp8266_webpage_wifi_configuration.png)

- Daheim ins eigene WLAN
- Wenn FW konfiguriertes WLAN nicht mehr sieht, macht sie einen AccessPoint auf
  - auf deren Webseite, kann WLAN konfiguriert werden

- Alternativ: Airrohr-Flasher-Tool

---
# IP im WLAN finden

- eigenen Router/AP fragen, welche Geräte im WLAN sind
- multicast-DNS mit Laptop im selben WLAN:
  - Airrohr Flashing Tool - Discovery Page
  - `avahi-browse -a -v --resolve | less`
- Terminal via USB-Kabel:
  - `python3 -m serial.tools.miniterm /dev/ttyUSB* 9600`
  - https://bipes.net.br/aroca/web-serial-terminal/ mit Speed 9600
  - µC Reset und Terminal Output lesen

---
# Kit Unkostenbeitrag

- ca 52€
- QR Code für Banking Apps

![bg right:40% fit](img/bernhard_n26_sensor_community_workshop_content.svg)


---
# WLAN Distanz überbrücken für Experten

![bg right:40%](img/wifi_outdoor_antenna.jpg)

- e.g. [Amazon](https://www.amazon.com/TP-Link-Long-Range-Outdoor-Transmitter/dp/B07YX8NPFL/)
- Hilfe im realraum oder bei Funkfeuer holen

---

# Firmware Download für Experten

- http://firmware.sensor.community/

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

# DMNS Standort Mikrofon

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


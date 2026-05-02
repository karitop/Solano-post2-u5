# Emuladores y Virtualización. Karol Zulay Solano Gomez 1152454

Descripción de la VM creada

Nombre: Lab5-Alpine
Sistema operativo: Alpine Linux 3.19 (64-bit)
RAM: 1024 MB (1 GB)
Disco duro: 10 GB 


IPs obtenidas por modo de red

NAT

IP: 10.0.2.15
Acceso a internet: Sí
Acceso desde anfitrión: No directo

Host-Only

IP: 192.168.56.101
Acceso a internet: No
Acceso desde anfitrión: Sí

Bridge

IP: 192.168.1.14
Acceso a internet: Sí
Acceso desde anfitrión: Sí


Árbol de snapshots

Lab5-Alpine

└── snap_base

      Descripción: Alpine Linux 3.19 recién instalado, sin modificaciones
      
      └── snap_con_herramientas
      
            Descripción: Alpine con curl, wget, nano y htop instalados


Proceso de exportación OVA

La VM fue exportada en formato OVA usando el comando:
bashVBoxManage export "Lab5-Alpine" --output "Lab5-Alpine-export.ova" --manifest --options manifest
El archivo generado fue Lab5-Alpine-export.ova con un tamaño de 151.985.664 bytes. El archivo .ova no se sube al repositorio por su tamaño. La evidencia se encuentra en
<img width="844" height="236" alt="C5" src="https://github.com/user-attachments/assets/c5e754a9-f922-451f-9022-d93447897285" />
<img width="1651" height="706" alt="image" src="https://github.com/user-attachments/assets/eae2942f-1c02-4a60-a1ae-6300a9467381" />


Conclusiones

A través de este laboratorio se pudo comprobar en la práctica cómo los distintos modos de red de VirtualBox afectan la conectividad de la VM: NAT ofrece acceso a internet de forma segura, Host-Only aísla la VM en una red privada con el anfitrión sin salida a internet, y Bridge integra la VM a la red física como si fuera un equipo más. Por otro lado, los snapshots demostraron ser una herramienta muy útil al permitir revertir el estado completo del sistema en segundos, sin necesidad de reinstalar ni deshacer cambios manualmente. Finalmente, la exportación en formato OVA confirmó la portabilidad del estándar OVF, permitiendo distribuir o respaldar una VM completa en un solo archivo compatible con distintas plataformas de virtualización.

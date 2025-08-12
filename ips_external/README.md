
# Modulo para polybar

![openrgb](https://github.com/firstatack/polybar_modules/blob/main/ips_external/Screenshot_2025-08-12-11-29-49_1366.png?raw=true)

### Requisitos:

En principio no hacen falta requisitos pues usa programas basico que deberian estar en casi todas las distribuciones de linux
### Instalacion y configuracion:
 
1º- Copiar los scripts a la ruta donde tengais los scripts de polybar par mantener orden y dadle permisos.

```bash
cp privacy.sh ~/.config/bspwm/themes/TU_TEMA/polybar/scripts
cp privacy_wrapper.sh ~/.config/bspwm/themes/TU_TEMA/polybar/scripts
chmod +x ~/.config/bspwm/themes/TU_TEMA/polybar/scripts/privacy.sh
chmod +x ~/.config/bspwm/themes/TU_TEMA/polybar/scripts/privacy_wrapper.sh
```

2º- Agregar el contenido del fichero config a vuestro config de polybar **modificando las rutas al script** o si teneis los modulos en un fichero aparte a vuestro fichero modules.

3º- Cargarlo en la seccion que sea vuestra preferencia con **privacy**

```bash
modules-center = space LD privacy RD LD discord RD space LD VirtualBox RD space space LD nvim RD space LD MS_VisualStudioCode RD space LD openrgb RD space LD volam RlD space LD battery RD
```

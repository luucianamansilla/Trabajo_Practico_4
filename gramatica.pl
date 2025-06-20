det(el, singular, masculino).
det(la, singular, femenino).
det(los, plural, masculino).
det(las, plural, femenino).
det(un, singular, masculino).
det(una, singular, femenino).

sust(empleado, singular, masculino).
sust(empleada, singular, femenino).
sust(empleados, plural, masculino).
sust(empleadas, plural, femenino).
sust(sueldo, singular, masculino).
sust(sueldos, plural, masculino).

verbo(trabaja, singular, vi).
verbo(cobra, singular, vt).
verbo(cobran, plural, vt).

o(o(SN, SV)) -->
    sn(SN, NumS, _GenS),
    sv(SV, NumS).

sn(sn(det(PalDet), n(PalSust)), Num, Gen) -->
    [PalDet],
    { det(PalDet, Num, Gen) },
    [PalSust],
    { sust(PalSust, Num, Gen) }.

sn(sn(n(PalSust)), Num, Gen) -->
    [PalSust],
    { sust(PalSust, Num, Gen) }.

sv(sv(v(PalVerbo), SN_Obj), NumS) -->
    [PalVerbo],
    { verbo(PalVerbo, NumS, vt) },
    sn(SN_Obj, _NumObj, _GenObj).

sv(sv(v(PalVerbo)), NumS) -->
    [PalVerbo],
    { verbo(PalVerbo, NumS, vi) }.
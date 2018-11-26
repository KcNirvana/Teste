.class public Lcom/miui/sdk/tc/TcPlugin;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getBrandsMap(Ljava/lang/String;Z)Ljava/util/LinkedHashMap;
.end method

.method public static native getCarriesMap(Z)Ljava/util/LinkedHashMap;
.end method

.method public static native getCitiesMap(I)Ljava/util/TreeMap;
.end method

.method public static native getInstructions(I)Ljava/util/ArrayList;
.end method

.method public static native getProvinceCodeByCityCode(I)I
.end method

.method public static native getProvincesMap(Z)Ljava/util/TreeMap;
.end method

.method public static native getResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)I
.end method

.method public static native getResultByTcType(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;II)I
.end method

.method public static native init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native setImsi(Ljava/lang/String;I)I
.end method

.method public static native update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native updateByTcType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

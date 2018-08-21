.class public Lcom/alipay/android/phone/inside/log/util/c;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "wifi_name"

    sput-object v0, Lcom/alipay/android/phone/inside/log/util/c;->a:Ljava/lang/String;

    const-string/jumbo v0, "mac_address"

    sput-object v0, Lcom/alipay/android/phone/inside/log/util/c;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/phone/inside/log/util/NetConnectionType;->NETWORK_TYPE_16:Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    sput-object v0, Lcom/alipay/android/phone/inside/log/util/c;->c:Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/phone/inside/log/util/c;->d:J

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/phone/inside/log/util/c;->d(Landroid/content/Context;)Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/log/util/NetConnectionType;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "inside"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    sget-object v2, Lcom/alipay/android/phone/inside/log/util/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/alipay/android/phone/inside/log/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "inside"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, ""

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "inside"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Lcom/alipay/android/phone/inside/log/util/NetConnectionType;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/android/phone/inside/log/util/c;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    sget-object v0, Lcom/alipay/android/phone/inside/log/util/c;->c:Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    :goto_0
    return-object v0

    :cond_0
    sput-wide v0, Lcom/alipay/android/phone/inside/log/util/c;->d:J

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/log/util/NetConnectionType;->getTypeByCode(I)Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/inside/log/util/c;->c:Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    :goto_1
    sget-object v0, Lcom/alipay/android/phone/inside/log/util/c;->c:Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/alipay/android/phone/inside/log/util/NetConnectionType;->WIFI:Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    sput-object v0, Lcom/alipay/android/phone/inside/log/util/c;->c:Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/alipay/android/phone/inside/log/util/NetConnectionType;->NETWORK_TYPE_16:Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    sput-object v0, Lcom/alipay/android/phone/inside/log/util/c;->c:Lcom/alipay/android/phone/inside/log/util/NetConnectionType;

    goto :goto_1
.end method

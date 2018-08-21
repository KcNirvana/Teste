.class public Lcom/autonavi/its/common/restapi/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/common/restapi/DeviceInfo$UTDXMLHandler;
    }
.end annotation


# static fields
.field private static final CELLSTATE:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final NETSTATE:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field private static final PHONESTATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final UM_SETTINGS_STORAGE_NEW:Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static final UTID_FILE:Ljava/lang/String; = "/.UTSystemConfig/Global/Alvin2.xml"

.field private static final WIFISTATE:Ljava/lang/String; = "android.permission.ACCESS_WIFI_STATE"

.field private static isUtdidFlag:Z

.field private static mDeviceId:Ljava/lang/String;

.field private static mMacAddress:Ljava/lang/String;

.field private static mReslution:Ljava/lang/String;

.field private static mSubscriberId:Ljava/lang/String;

.field private static mUtidid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mUtidid:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->isUtdidFlag:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mMacAddress:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mReslution:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mDeviceId:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mSubscriberId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->isUtdidFlag:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/autonavi/its/common/restapi/DeviceInfo;->isUtdidFlag:Z

    return p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mUtidid:Ljava/lang/String;

    return-object p0
.end method

.method private static checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static doChooseSort(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    sub-int v4, v3, v0

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v5, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    if-le v5, v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static getActiveNetWorkType(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getPrivateActiveNetWorkType(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static getCellInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 14

    :try_start_0
    const-string/jumbo v10, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v10}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v10}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, ""

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, ""

    aput-object v12, v10, v11

    :goto_0
    return-object v10

    :cond_1
    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    instance-of v10, v6, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v10, :cond_3

    move-object v0, v6

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "||"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "gsm"

    aput-object v12, v10, v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    :cond_2
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, ""

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, ""

    aput-object v12, v10, v11

    goto :goto_0

    :cond_3
    :try_start_1
    instance-of v10, v6, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v10, :cond_2

    move-object v0, v6

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v8

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v7

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    if-ltz v8, :cond_4

    if-ltz v7, :cond_4

    if-gez v1, :cond_4

    :cond_4
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "||"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "||"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "cdma"

    aput-object v12, v10, v11
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static getConnectWifi(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v4, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v4}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 2

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/autonavi/its/common/restapi/DeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mDeviceId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mDeviceId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getTelePhoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mDeviceId:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mDeviceId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mDeviceId:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static getDeviceMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lcom/autonavi/its/common/restapi/DeviceInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    sget-object v2, Lcom/autonavi/its/common/restapi/DeviceInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/autonavi/its/common/restapi/DeviceInfo;->mMacAddress:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/autonavi/its/common/restapi/DeviceInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autonavi/its/common/restapi/DeviceInfo;->mMacAddress:Ljava/lang/String;

    const-string/jumbo v1, "02:00:00:00:00:00"

    sget-object v2, Lcom/autonavi/its/common/restapi/DeviceInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "00:00:00:00:00:00"

    sget-object v2, Lcom/autonavi/its/common/restapi/DeviceInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autonavi/its/common/restapi/DeviceInfo;->mMacAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    sget-object v1, Lcom/autonavi/its/common/restapi/DeviceInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static getMNC(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    const-string/jumbo v0, ""

    :try_start_0
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v3}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getTelePhoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static getMacAddr()Ljava/lang/String;
    .locals 10

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "wlan0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string/jumbo v6, ""

    :goto_0
    return-object v6

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_4

    aget-byte v1, v2, v6

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const-string/jumbo v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v6

    :cond_6
    const-string/jumbo v6, ""

    goto :goto_0
.end method

.method public static getNetWorkType(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getPrivateWorkType(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getPrivateNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getPrivateActiveNetWorkType(Landroid/content/Context;)I
    .locals 5

    const/4 v2, -0x1

    if-eqz p0, :cond_0

    const-string/jumbo v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v4}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    move v3, v2

    goto :goto_0
.end method

.method private static getPrivateNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getTelePhoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getTelePhoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private static getPrivateSuscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mSubscriberId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/autonavi/its/common/restapi/DeviceInfo;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mSubscriberId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mSubscriberId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getTelePhoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mSubscriberId:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mSubscriberId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mSubscriberId:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/autonavi/its/common/restapi/DeviceInfo;->mSubscriberId:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getPrivateWorkType(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getTelePhoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method static getReslution(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    :try_start_0
    sget-object v4, Lcom/autonavi/its/common/restapi/DeviceInfo;->mReslution:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string/jumbo v4, ""

    sget-object v5, Lcom/autonavi/its/common/restapi/DeviceInfo;->mReslution:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/autonavi/its/common/restapi/DeviceInfo;->mReslution:Ljava/lang/String;

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    sput-object v4, Lcom/autonavi/its/common/restapi/DeviceInfo;->mReslution:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v4, Lcom/autonavi/its/common/restapi/DeviceInfo;->mReslution:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public static getSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getPrivateSuscriberId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getTelePhoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 2

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getUTDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    :try_start_0
    sget-object v6, Lcom/autonavi/its/common/restapi/DeviceInfo;->mUtidid:Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string/jumbo v6, ""

    sget-object v7, Lcom/autonavi/its/common/restapi/DeviceInfo;->mUtidid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/autonavi/its/common/restapi/DeviceInfo;->mUtidid:Ljava/lang/String;

    :goto_0
    return-object v6

    :cond_0
    const-string/jumbo v6, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v6}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mqBRboGZkQPcAkyk"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/autonavi/its/common/restapi/DeviceInfo;->mUtidid:Ljava/lang/String;

    :cond_1
    sget-object v6, Lcom/autonavi/its/common/restapi/DeviceInfo;->mUtidid:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string/jumbo v6, ""

    sget-object v7, Lcom/autonavi/its/common/restapi/DeviceInfo;->mUtidid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/autonavi/its/common/restapi/DeviceInfo;->mUtidid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    :cond_2
    :try_start_1
    const-string/jumbo v6, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    new-instance v5, Lcom/autonavi/its/common/restapi/DeviceInfo$UTDXMLHandler;

    invoke-direct {v5}, Lcom/autonavi/its/common/restapi/DeviceInfo$UTDXMLHandler;-><init>()V

    invoke-virtual {v3, v1, v5}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    sget-object v6, Lcom/autonavi/its/common/restapi/DeviceInfo;->mUtidid:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_1

    :catch_4
    move-exception v6

    goto :goto_1

    :catch_5
    move-exception v6

    goto :goto_1
.end method

.method static getWifiMacs(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v6, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v6}, Lcom/autonavi/its/common/restapi/DeviceInfo;->checkPerminssion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    const-string/jumbo v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/autonavi/its/common/restapi/DeviceInfo;->doChooseSort(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    const/4 v6, 0x7

    if-ge v0, v6, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

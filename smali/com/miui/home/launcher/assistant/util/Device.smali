.class public Lcom/miui/home/launcher/assistant/util/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "miui.yellowpage"

.field private static final TAG:Ljava/lang/String; = "device"

.field private static sDispalyWidth:I

.field private static sDisplayDensity:I

.field private static sDisplayHeight:I

.field private static sMiShopVersionCode:I

.field private static sRealDisplayHeight:I

.field private static sRealDisplayWidth:I

.field private static sSupports:Ljava/lang/String;

.field private static sUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/miui/home/launcher/assistant/util/Device;->sUUID:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/miui/home/launcher/assistant/util/Device;->sSupports:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireScreenAttr(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lcom/miui/home/launcher/assistant/util/Device;->sDisplayHeight:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/miui/home/launcher/assistant/util/Device;->sDispalyWidth:I

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v3, Lcom/miui/home/launcher/assistant/util/Device;->sDisplayDensity:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lcom/miui/home/launcher/assistant/util/Device;->sRealDisplayHeight:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/miui/home/launcher/assistant/util/Device;->sRealDisplayWidth:I

    return-void
.end method

.method private static acquireUUID(Landroid/content/Context;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://miui.yellowpage/uuid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "uuid"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/util/Device;->sUUID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayDensity(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sDisplayDensity:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/Device;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_0
    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sDisplayDensity:I

    return v0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sDisplayHeight:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/Device;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_0
    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sDisplayHeight:I

    return v0
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sDispalyWidth:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/Device;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_0
    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sDispalyWidth:I

    return v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    const-string/jumbo v5, "device"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getRealDisplayHeight(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sRealDisplayHeight:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/Device;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_0
    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sRealDisplayHeight:I

    return v0
.end method

.method public static getRealDisplayRatio(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sRealDisplayWidth:I

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sRealDisplayHeight:I

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/Device;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_1
    sget v0, Lcom/miui/home/launcher/assistant/util/Device;->sRealDisplayHeight:I

    sget v1, Lcom/miui/home/launcher/assistant/util/Device;->sRealDisplayWidth:I

    div-int/2addr v0, v1

    return v0
.end method

.method public static getSHAImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/Device;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/CoderUtils;->encodeSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSupports(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/util/Device;->sSupports:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mipay"

    sput-object v0, Lcom/miui/home/launcher/assistant/util/Device;->sSupports:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/assistant/util/Device;->sSupports:Ljava/lang/String;

    return-object v0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/util/Device;->sUUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/Device;->acquireUUID(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/assistant/util/Device;->sUUID:Ljava/lang/String;

    return-object v0
.end method

.method public static isAllScreen(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/Device;->getRealDisplayRatio(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

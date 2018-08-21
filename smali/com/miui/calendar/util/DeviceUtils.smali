.class public Lcom/miui/calendar/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final ACCOUNT_NAME_DOMAIN_XIAOMI:Ljava/lang/String; = "@xiaomi.com"

.field public static final BIG_VERSION_V8:Ljava/lang/String; = "V8"

.field public static IS_A8:Z = false

.field private static final PARAM_KEY_APP_VERSION:Ljava/lang/String; = "version_code"

.field private static final PARAM_KEY_DEVICE:Ljava/lang/String; = "d"

.field private static final PARAM_KEY_IMEI_MD5:Ljava/lang/String; = "m"

.field private static final PARAM_KEY_MIUI_BIG_VERSION:Ljava/lang/String; = "mv"

.field private static final PARAM_KEY_MIUI_VERSION:Ljava/lang/String; = "v"

.field private static final PARAM_KEY_NETWORK_TYPE:Ljava/lang/String; = "n"

.field private static final PARAM_KEY_REGION:Ljava/lang/String; = "r"

.field private static final PARAM_KEY_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field private static final PARAM_KEY_USER_ACCOUNT_TYPE:Ljava/lang/String; = "u"

.field private static final PARAM_KEY_VERSION_TYPE:Ljava/lang/String; = "t"

.field private static final TAG:Ljava/lang/String; = "Cal:D:DeviceUtils"

.field public static final USER_ACCOUNT_TYPE_EXCHANGE:I = 0x1

.field public static final USER_ACCOUNT_TYPE_NONE:I = 0x0

.field public static final USER_ACCOUNT_TYPE_XIAOMI:I = 0x2

.field public static final VERSION_TYPE_ALPHA:Ljava/lang/String; = "alpha"

.field public static final VERSION_TYPE_DEVELOPMENT:Ljava/lang/String; = "development"

.field public static final VERSION_TYPE_STABLE:Ljava/lang/String; = "stable"

.field private static mUserAccountType:I

.field private static sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

.field private static sMiuiVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v2, -0x1

    sput v2, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I

    const/4 v2, 0x0

    sput-object v2, Lcom/miui/calendar/util/DeviceUtils;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v2, ""

    sput-object v2, Lcom/miui/calendar/util/DeviceUtils;->sMiuiVersion:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/calendar/util/DeviceUtils;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v2, "lithium"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/calendar/util/DeviceUtils;->IS_A8:Z

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Cal:D:DeviceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reflection error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGeneralParam(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "d"

    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "r"

    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "mv"

    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->getMIUIBigVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "v"

    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->getMIUIVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "n"

    invoke-static {p0}, Lcom/miui/calendar/util/DeviceUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "t"

    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->getVersionType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version_code"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/calendar/util/DeviceUtils;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "m"

    invoke-static {p0}, Lcom/miui/calendar/util/DeviceUtils;->getDeviceIdMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "u"

    invoke-static {p0}, Lcom/miui/calendar/util/DeviceUtils;->getUserAccountType(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Cal:D:DeviceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addGeneralParam(): params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/calendar/util/Logger;->dCalV(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public static getDeviceIdMD5(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/miui/calendar/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MD5"

    invoke-static {v0, v1}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHashedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/calendar/util/DeviceUtils;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v2, ""

    :cond_1
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "Cal:D:DeviceUtils"

    const-string/jumbo v4, "getHashedDeviceId()"

    invoke-static {v3, v4, v1}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getMIUIBigVersion()Ljava/lang/String;
    .locals 6

    sget-object v1, Lcom/miui/calendar/util/DeviceUtils;->sMiuiVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/miui/calendar/util/DeviceUtils;->sMiuiVersion:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/miui/calendar/util/DeviceUtils;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Lcom/miui/calendar/util/DeviceUtils;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "ro.miui.ui.version.name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/miui/calendar/util/DeviceUtils;->sMiuiVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-object v1, Lcom/miui/calendar/util/DeviceUtils;->sMiuiVersion:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cal:D:DeviceUtils"

    const-string/jumbo v2, "getMIUIBigVersion()"

    invoke-static {v1, v2, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getMIUIVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, "NA"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string/jumbo v3, "WIFI"

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "TD-SCDMA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "WCDMA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "CDMA2000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string/jumbo v3, "3G"

    goto :goto_0

    :pswitch_0
    const-string/jumbo v3, "2G"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "3G"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "4G"

    goto :goto_0

    :cond_3
    move-object v3, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v2

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getPackageVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    const-string/jumbo v2, ""
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Point;->y:I

    return v2
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    return v2
.end method

.method private static getUserAccountType(Landroid/content/Context;)I
    .locals 13

    const/4 v12, -0x1

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget v6, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I

    if-eq v6, v12, :cond_0

    sget v6, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I

    :goto_0
    return v6

    :cond_0
    invoke-static {p0}, Lcom/miui/calendar/util/SimpleProvider;->connect(Landroid/content/Context;)Lcom/miui/calendar/util/SimpleProvider;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/miui/calendar/util/SimpleProvider;->withUri(Landroid/net/Uri;)Lcom/miui/calendar/util/SimpleProvider;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "account_name"

    aput-object v8, v7, v9

    const-string/jumbo v8, "account_type"

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lcom/miui/calendar/util/SimpleProvider;->withProjection([Ljava/lang/String;)Lcom/miui/calendar/util/SimpleProvider;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lcom/miui/calendar/util/SimpleProvider;->withType([Ljava/lang/Class;)Lcom/miui/calendar/util/SimpleProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/calendar/util/SimpleProvider;->query()Lcom/miui/calendar/util/SimpleProvider$Result;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/miui/calendar/util/SimpleProvider$Result;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    :try_start_0
    invoke-virtual {v4}, Lcom/miui/calendar/util/SimpleProvider$Result;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/calendar/util/SimpleProvider$ResultRow;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->getItem(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->getItem(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "LOCAL"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "com.xiaomi"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    sput v7, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "@"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "@"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "@xiaomi.com"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x2

    sput v6, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I

    const-string/jumbo v6, "Cal:D:DeviceUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getUserAccountType(): type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/calendar/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "Cal:D:DeviceUtils"

    const-string/jumbo v7, "getUserAccountType()"

    invoke-static {v6, v7, v3}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    sget v6, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I

    if-ne v6, v12, :cond_3

    sput v9, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I

    :cond_3
    const-string/jumbo v6, "Cal:D:DeviceUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getUserAccountType(): type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/calendar/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Lcom/miui/calendar/util/DeviceUtils;->mUserAccountType:I

    goto/16 :goto_0
.end method

.method public static getVersionType()Ljava/lang/String;
    .locals 2

    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, "alpha"

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "stable"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "development"

    goto :goto_0
.end method

.method public static hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    const-string/jumbo v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "failed to init SHA1 digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isMIUIV8()Z
    .locals 2

    const-string/jumbo v0, "V8"

    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->getMIUIBigVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class public Lcom/xiaomi/ad/mediationconfig/internal/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0x2710

.field public static final DEFAULT_HTTP_READ_TIMEOUT:I = 0x4e20

.field public static final MAX_REDIRECT_COUNT:I = 0x5

.field private static a:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->NONE:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN4G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN3G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN2G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;
    .locals 4

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->avoidOnMainThread()V

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->WIFI:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    return-object p0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->WIFI:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    return-object p0

    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetworkUtils;->a(I)Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->NONE:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetworkUtils;->a:Ljava/lang/String;

    const-string v1, "getNetState"

    invoke-static {v0, v1, p0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->NONE:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    return-object p0
.end method

.method public static checkNetworkState(Landroid/content/Context;I)Z
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetworkUtils;->a(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->NONE:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->WIFI:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AdNetType;->isWifiAllowed(I)Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN2G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AdNetType;->is2GAllowed(I)Z

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN3G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AdNetType;->is3GAllowed(I)Z

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN4G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    if-ne p0, v0, :cond_4

    invoke-static {p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AdNetType;->is4GAllowed(I)Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public static getNetworkState(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetworkUtils;->a(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNetAccessible(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetworkUtils;->a(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->NONE:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    invoke-virtual {v0, p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isWifiAccessible(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetworkUtils;->a(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->WIFI:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    invoke-virtual {v0, p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

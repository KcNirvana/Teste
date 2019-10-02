.class public Lcom/miui/zeus/columbus/util/j;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final a:I = 0x1388

.field public static final b:I = 0x4e20

.field public static final c:I = 0x5

.field private static d:Ljava/lang/String; = "NetworkUtils"


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

.method private static a(I)Lcom/miui/zeus/columbus/common/NetState;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/miui/zeus/columbus/common/NetState;->NONE:Lcom/miui/zeus/columbus/common/NetState;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/miui/zeus/columbus/common/NetState;->MN3G:Lcom/miui/zeus/columbus/common/NetState;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/miui/zeus/columbus/common/NetState;->MN2G:Lcom/miui/zeus/columbus/common/NetState;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/miui/zeus/columbus/common/NetState;->MN4G:Lcom/miui/zeus/columbus/common/NetState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/zeus/columbus/util/j;->d:Ljava/lang/String;

    const-string v2, "getLocalIpAddress ex."

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/zeus/columbus/util/j;->d(Landroid/content/Context;)Lcom/miui/zeus/columbus/common/NetState;

    move-result-object p0

    sget-object v0, Lcom/miui/zeus/columbus/common/NetState;->WIFI:Lcom/miui/zeus/columbus/common/NetState;

    invoke-virtual {v0, p0}, Lcom/miui/zeus/columbus/common/NetState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 2

    invoke-static {p0}, Lcom/miui/zeus/columbus/util/j;->d(Landroid/content/Context;)Lcom/miui/zeus/columbus/common/NetState;

    move-result-object p0

    sget-object v0, Lcom/miui/zeus/columbus/common/NetState;->NONE:Lcom/miui/zeus/columbus/common/NetState;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/miui/zeus/columbus/common/NetState;->WIFI:Lcom/miui/zeus/columbus/common/NetState;

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lcom/miui/zeus/columbus/common/AdNetType;->isWifiAllowed(I)Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/miui/zeus/columbus/common/NetState;->MN2G:Lcom/miui/zeus/columbus/common/NetState;

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lcom/miui/zeus/columbus/common/AdNetType;->is2GAllowed(I)Z

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lcom/miui/zeus/columbus/common/NetState;->MN3G:Lcom/miui/zeus/columbus/common/NetState;

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lcom/miui/zeus/columbus/common/AdNetType;->is3GAllowed(I)Z

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/miui/zeus/columbus/common/NetState;->MN4G:Lcom/miui/zeus/columbus/common/NetState;

    if-ne p0, v0, :cond_4

    invoke-static {p1}, Lcom/miui/zeus/columbus/common/AdNetType;->is4GAllowed(I)Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/zeus/columbus/util/j;->d(Landroid/content/Context;)Lcom/miui/zeus/columbus/common/NetState;

    move-result-object p0

    sget-object v0, Lcom/miui/zeus/columbus/common/NetState;->NONE:Lcom/miui/zeus/columbus/common/NetState;

    invoke-virtual {v0, p0}, Lcom/miui/zeus/columbus/common/NetState;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/zeus/columbus/util/j;->d(Landroid/content/Context;)Lcom/miui/zeus/columbus/common/NetState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/common/NetState;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Lcom/miui/zeus/columbus/common/NetState;
    .locals 4

    invoke-static {}, Lcom/miui/zeus/columbus/util/a;->e()V

    :try_start_0
    invoke-static {p0}, Lcom/miui/zeus/columbus/util/a;->a(Landroid/content/Context;)Landroid/content/Context;

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

    sget-object p0, Lcom/miui/zeus/columbus/common/NetState;->WIFI:Lcom/miui/zeus/columbus/common/NetState;

    return-object p0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object p0, Lcom/miui/zeus/columbus/common/NetState;->WIFI:Lcom/miui/zeus/columbus/common/NetState;

    return-object p0

    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/miui/zeus/columbus/util/j;->a(I)Lcom/miui/zeus/columbus/common/NetState;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/miui/zeus/columbus/common/NetState;->NONE:Lcom/miui/zeus/columbus/common/NetState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/miui/zeus/columbus/util/j;->d:Ljava/lang/String;

    const-string v1, "getNetState"

    invoke-static {v0, v1, p0}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/miui/zeus/columbus/common/NetState;->NONE:Lcom/miui/zeus/columbus/common/NetState;

    return-object p0
.end method

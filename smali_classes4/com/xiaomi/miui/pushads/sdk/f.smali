.class public Lcom/xiaomi/miui/pushads/sdk/f;
.super Ljava/lang/Object;


# direct methods
.method private static a(I)Lcom/xiaomi/miui/pushads/sdk/k$a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/xiaomi/miui/pushads/sdk/k$a;->a:Lcom/xiaomi/miui/pushads/sdk/k$a;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/xiaomi/miui/pushads/sdk/k$a;->e:Lcom/xiaomi/miui/pushads/sdk/k$a;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/xiaomi/miui/pushads/sdk/k$a;->d:Lcom/xiaomi/miui/pushads/sdk/k$a;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/miui/pushads/sdk/k$a;->c:Lcom/xiaomi/miui/pushads/sdk/k$a;

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

.method public static a(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/k$a;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    sget-object p0, Lcom/xiaomi/miui/pushads/sdk/k$a;->a:Lcom/xiaomi/miui/pushads/sdk/k$a;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/xiaomi/miui/pushads/sdk/k$a;->b:Lcom/xiaomi/miui/pushads/sdk/k$a;

    return-object p0

    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/f;->a(I)Lcom/xiaomi/miui/pushads/sdk/k$a;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/xiaomi/miui/pushads/sdk/k$a;->a:Lcom/xiaomi/miui/pushads/sdk/k$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/k$a;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/k$a;->a:Lcom/xiaomi/miui/pushads/sdk/k$a;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/k$a;->b:Lcom/xiaomi/miui/pushads/sdk/k$a;

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.class public Lcom/facebook/ads/internal/w/b/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/w/b/u$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/facebook/ads/internal/w/b/u$a;
    .locals 1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/facebook/ads/internal/w/b/u$a;->a:Lcom/facebook/ads/internal/w/b/u$a;

    return-object p0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/facebook/ads/internal/w/b/u$a;->a:Lcom/facebook/ads/internal/w/b/u$a;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/facebook/ads/internal/w/b/u$a;->f:Lcom/facebook/ads/internal/w/b/u$a;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/facebook/ads/internal/w/b/u$a;->e:Lcom/facebook/ads/internal/w/b/u$a;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/facebook/ads/internal/w/b/u$a;->d:Lcom/facebook/ads/internal/w/b/u$a;

    return-object p0

    :cond_2
    sget-object p0, Lcom/facebook/ads/internal/w/b/u$a;->c:Lcom/facebook/ads/internal/w/b/u$a;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/facebook/ads/internal/w/b/u$a;->b:Lcom/facebook/ads/internal/w/b/u$a;

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

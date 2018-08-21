.class public final Lcom/sina/weibo/sdk/call/WeiboPageUtilsV2;
.super Ljava/lang/Object;
.source "WeiboPageUtilsV2.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayInWeiboMap(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v5, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v6, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v5, v6}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const-string/jumbo v2, "http://weibo.cn/dpool/ttt/maps.php?xy=%s,%s&amp;size=320x320&amp;offset=%s"

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    const-string/jumbo v3, ""

    if-eqz p1, :cond_1

    const-string/jumbo v5, "longitude"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v5, "latitude"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "offset"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_1
    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo v5, "packagename"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "packagename"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "default"

    const-string/jumbo v5, "extparam"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v6, v7, v5, v4}, Lcom/sina/weibo/sdk/call/WeiboPageUtilsV2;->openInWeiboBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static openInWeiboBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v3, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v4, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v4, "url\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "topnav"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "default"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "fullscreen"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v4, "sinainternalbrowser\u4e0d\u5408\u6cd5"

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sinaweibo://browser"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "sinainternalbrowser"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "extparam"

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sinaweibo://browser"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, p4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openQrcodeScanner(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://qrcode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://qrcode"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static postNewWeibo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://sendweibo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://sendweibo"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewNearbyPeople(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://nearbypeople"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://nearbypeople"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewNearbyWeibo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://nearbyweibo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://nearbyweibo"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewPageDetailInfo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v2, "pageid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v2, "cardid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://pagedetailinfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://pagedetailinfo"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_6
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewPageInfo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v2, "pageid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://pageinfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://pageinfo"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewPagePhotoList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string/jumbo v4, "pageid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-string/jumbo v4, "cardid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v0, -0x1

    :try_start_0
    const-string/jumbo v4, "count"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-gez v0, :cond_4

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sinaweibo://pagephotolist"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v2, 0x0

    if-eqz p1, :cond_7

    const-string/jumbo v4, "packagename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sinaweibo://pagephotolist"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "packagename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v5, v6, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_7
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static viewPageProductList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string/jumbo v4, "pageid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-string/jumbo v4, "cardid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v0, -0x1

    :try_start_0
    const-string/jumbo v4, "count"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-gez v0, :cond_4

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sinaweibo://pageproductlist"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v2, 0x0

    if-eqz p1, :cond_7

    const-string/jumbo v4, "packagename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sinaweibo://pageproductlist"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "packagename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v5, v6, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_7
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static viewPageUserList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string/jumbo v4, "pageid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-string/jumbo v4, "cardid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v0, -0x1

    :try_start_0
    const-string/jumbo v4, "count"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-gez v0, :cond_4

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sinaweibo://pageuserlist"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v2, 0x0

    if-eqz p1, :cond_7

    const-string/jumbo v4, "packagename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sinaweibo://pageuserlist"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "packagename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v5, v6, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_7
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static viewPageWeiboList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string/jumbo v4, "pageid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-string/jumbo v4, "cardid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v0, -0x1

    :try_start_0
    const-string/jumbo v4, "count"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-gez v0, :cond_4

    new-instance v4, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v5, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sinaweibo://pageweibolist"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v2, 0x0

    if-eqz p1, :cond_7

    const-string/jumbo v4, "packagename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sinaweibo://pageweibolist"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "packagename"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v5, v6, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_7
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static viewUserInfo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v2, "uid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "nick"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "uid\u548cnick\u5fc5\u987b\u81f3\u5c11\u6709\u4e00\u4e2a\u4e0d\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://userinfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://userinfo"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewUsertrends(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v2, "uid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "uid\u548cnick\u5fc5\u987b\u81f3\u5c11\u6709\u4e00\u4e2a\u4e0d\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://usertrends"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://usertrends"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static weiboDetail(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "mblogId(\u5fae\u535aid)\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v2, "mblogid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "mblogId(\u5fae\u535aid)\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://detail"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://detail"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "packagename"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public final Lcom/sina/weibo/sdk/call/WeiboPageUtils;
.super Ljava/lang/Object;
.source "WeiboPageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayInWeiboMap(Landroid/content/Context;Lcom/sina/weibo/sdk/call/Position;Ljava/lang/String;)V
    .locals 6
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
    const-string/jumbo v2, "http://weibo.cn/dpool/ttt/maps.php?xy=%s,%s&amp;size=320x320&amp;offset=%s"

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    const-string/jumbo v3, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrOffset()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "default"

    invoke-static {p0, v4, v5, p2}, Lcom/sina/weibo/sdk/call/WeiboPageUtils;->openInWeiboBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static openInWeiboBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "url\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "topnav"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "default"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "fullscreen"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "sinainternalbrowser\u4e0d\u5408\u6cd5"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://browser"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sinainternalbrowser"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static openQrcodeScanner(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static postNewWeibo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/call/Position;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
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
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sinaweibo://sendweibo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string/jumbo v3, "content"

    const-string/jumbo v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\+"

    const-string/jumbo v6, "%20"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v3, "poiid"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "poiname"

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    const-string/jumbo v3, "longitude"

    invoke-virtual {p4}, Lcom/sina/weibo/sdk/call/Position;->getStrLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "latitude"

    invoke-virtual {p4}, Lcom/sina/weibo/sdk/call/Position;->getStrLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v3, "pageid"

    invoke-virtual {v1, v3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "extparam"

    invoke-virtual {v1, v3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static viewNearPhotoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "100101"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "nearphoto"

    const-string/jumbo v3, "\u5468\u8fb9\u70ed\u56fe"

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sina/weibo/sdk/call/WeiboPageUtils;->viewPagePhotoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static viewNearbyPeople(Landroid/content/Context;Lcom/sina/weibo/sdk/call/Position;Ljava/lang/String;)V
    .locals 4
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v2, "longitude"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "latitude"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "offset"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrOffset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static viewNearbyWeibo(Landroid/content/Context;Lcom/sina/weibo/sdk/call/Position;Ljava/lang/String;)V
    .locals 4
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v2, "longitude"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "latitude"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "offset"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrOffset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static viewPageDetailInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://pagedetailinfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "pageid"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "cardid"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static viewPageInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://pageinfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "pageid"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static viewPagePhotoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://pagephotolist"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "pageid"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "cardid"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "page"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static viewPageProductList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://pageproductlist"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "pageid"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "cardid"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "page"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static viewPageUserList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://pageuserlist"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "pageid"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "cardid"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "page"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static viewPageWeiboList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://pageweibolist"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "pageid"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "cardid"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "page"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static viewPoiPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "100101"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3, p4}, Lcom/sina/weibo/sdk/call/WeiboPageUtils;->viewPageInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static viewPoiPhotoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "100101"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "nearphoto"

    const-string/jumbo v3, "\u5468\u8fb9\u70ed\u56fe"

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sina/weibo/sdk/call/WeiboPageUtils;->viewPagePhotoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static viewUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "uid\u548cnick\u5fc5\u987b\u81f3\u5c11\u6709\u4e00\u4e2a\u4e0d\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://userinfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "nick"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static viewUsertrends(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "uid\u548cnick\u5fc5\u987b\u81f3\u5c11\u6709\u4e00\u4e2a\u4e0d\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://usertrends"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static weiboDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string/jumbo v3, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sinaweibo://detail"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "mblogid"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "extparam"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

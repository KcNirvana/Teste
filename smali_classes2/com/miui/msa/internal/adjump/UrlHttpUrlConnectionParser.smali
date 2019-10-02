.class public Lcom/miui/msa/internal/adjump/UrlHttpUrlConnectionParser;
.super Ljava/lang/Object;
.source "UrlHttpUrlConnectionParser.java"


# static fields
.field private static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0x2710

.field private static final DEFAULT_HTTP_READ_TIMEOUT:I = 0x4e20

.field private static final MAX_REDIRECT_COUNT:I = 0xf

.field private static final REDIRECT_CODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UrlHttpUrlConnectionParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attributeUrl(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getClickTrackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/miui/msa/internal/adjump/UrlHttpUrlConnectionParser;->redirectUrl(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UrlHttpUrlConnectionParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x4e20

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p0
.end method

.method public static getRedirectUrl(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/miui/msa/internal/adjump/UrlHttpUrlConnectionParser;->redirectUrl(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static redirectUrl(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Ljava/lang/String;
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "UrlHttpUrlConnectionParser"

    const-string p1, "originalUrl is null"

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/miui/msa/internal/adjump/UrlHttpUrlConnectionParser;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    const/16 v5, 0xf

    if-ge v4, v5, :cond_2

    const-string v5, "Location"

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "http"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "UrlHttpUrlConnectionParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redirectUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setFinalUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpDetail(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v5

    invoke-static {p0, p2, p3, v5}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackJumpResult(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    return-object p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/miui/msa/internal/adjump/UrlHttpUrlConnectionParser;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setFinalUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpDetail(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    invoke-static {p0, p2, p3, v1}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackJumpResult(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    const-string v1, "UrlHttpUrlConnectionParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finalUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string v5, "UrlHttpUrlConnectionParser"

    const-string v6, "getRedirectUrl exception"

    invoke-static {v5, v6, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setFinalUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpDetail(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object p1

    invoke-static {p0, p2, p3, p1}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackJumpException(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    move-object p1, v1

    :goto_2
    return-object p1
.end method

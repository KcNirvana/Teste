.class public Lcom/miui/msa/internal/adjump/UrlOkHttpParser;
.super Ljava/lang/Object;
.source "UrlOkHttpParser.java"


# static fields
.field private static final MAX_REDIRECTS_CNT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "UrlOkHttpParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRedirectUrl(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Ljava/lang/String;
    .locals 10

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "UrlOkHttpParser"

    const-string v8, "Put jumpDetail exception"

    invoke-static {v7, v8, v6}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    add-int/lit8 v6, v5, 0x1

    const/16 v7, 0x8

    if-ge v5, v7, :cond_2

    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v5, 0x0

    sub-long/2addr v7, v1

    invoke-virtual {v0, v7, v8}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setFinalUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpDetail(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackJumpResult(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    return-object v3

    :cond_0
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/miui/msa/internal/adjump/UrlOkHttpParser;->replaceUA(Landroid/content/Context;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v0, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Response;->isRedirect()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Location"

    invoke-virtual {v7, v8}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v5}, Lokhttp3/Call;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v6

    move-object v3, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v7

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-virtual {v7}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long/2addr v7, v1

    invoke-virtual {v5, v7, v8}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setFinalUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpDetail(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v5

    invoke-static {p0, p1, p2, v5}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackJumpResult(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    :goto_1
    const-string v5, "UrlOkHttpParser"

    const-string v7, "getRedirect e : "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setFinalUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpDetail(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackJumpException(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static replaceUA(Landroid/content/Context;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;
    .locals 1

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "User-Agent"

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/UserAgentUtils;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

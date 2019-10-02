.class public Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$HttpClientHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/video/base/common/net/config/NetConfigHolder;->getInstance()Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$HttpClientHolder;->instance:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;

    return-object v0
.end method


# virtual methods
.method public cancleAll()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    return-void
.end method

.method public doRequest(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V

    return-void
.end method

.method public doRequest(Ljava/lang/String;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;->doRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V

    return-void
.end method

.method public doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V

    return-void
.end method

.method public doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class;",
            "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p3, :cond_0

    invoke-static {p3}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :cond_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;

    invoke-direct {p2, p0, p5, p4}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;Ljava/lang/Class;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public doRequest(Ljava/lang/String;Ljava/util/Map;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V

    return-void
.end method

.method public doRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class;",
            "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V

    return-void
.end method

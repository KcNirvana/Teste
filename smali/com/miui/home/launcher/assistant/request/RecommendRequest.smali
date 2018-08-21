.class public Lcom/miui/home/launcher/assistant/request/RecommendRequest;
.super Ljava/lang/Object;
.source "RecommendRequest.java"


# static fields
.field public static final URL_HOST:Ljava/lang/String; = "http://api.assistant.miui.com"

.field public static final URL_RECOMMEND_APPS:Ljava/lang/String; = "http://api.assistant.miui.com/ms/recommendCard"

.field public static final URL_RECOMMEND_POS:Ljava/lang/String; = "http://api.assistant.miui.com/ms/recommendCard/position"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/request/RecommendRequest;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public reqApps(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/request/RecommendRequest;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/request/RecommendRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "http://api.assistant.miui.com/ms/recommendCard"

    invoke-direct {v1, v3, v4}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "appIds"

    invoke-virtual {v1, v3, p1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->getStatus()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reqPosition()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/request/RecommendRequest;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/request/RecommendRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "http://api.assistant.miui.com/ms/recommendCard/position"

    invoke-direct {v1, v3, v4}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "imeiHash"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/request/RecommendRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/util/Device;->getSHAImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->getStatus()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

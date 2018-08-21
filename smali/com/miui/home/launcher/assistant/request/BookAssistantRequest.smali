.class public Lcom/miui/home/launcher/assistant/request/BookAssistantRequest;
.super Ljava/lang/Object;
.source "BookAssistantRequest.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/request/BookAssistantRequest;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public reqCalendarServer(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/request/BookAssistantRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/request/BookAssistantRequest;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->setNeedSign(Z)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->getStatus()I

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

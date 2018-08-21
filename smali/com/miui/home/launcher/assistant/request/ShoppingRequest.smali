.class public Lcom/miui/home/launcher/assistant/request/ShoppingRequest;
.super Ljava/lang/Object;
.source "ShoppingRequest.java"


# static fields
.field public static final URL_HOST:Ljava/lang/String; = "http://api.assistant.miui.com"

.field public static final URL_PARSER_SHOPPING:Ljava/lang/String; = "http://api.assistant.miui.com/shopping"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/request/ShoppingRequest;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public reqMiShoppPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/request/ShoppingRequest;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/request/ShoppingRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "http://m.mi.com/v1/hd/messageAid"

    invoke-direct {v1, v3, v4}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "client_id"

    const-string/jumbo v4, "180100031058"

    invoke-virtual {v1, v3, v4}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "action"

    const-string/jumbo v4, "productPrice"

    invoke-virtual {v1, v3, v4}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ids"

    invoke-virtual {v1, v3, p1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->setEncrypt(Z)V

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->setDecryptDownloadData(Z)Lcom/miui/home/launcher/assistant/request/core/BaseJSONRequest;

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

.method public reqPrice(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/request/ShoppingRequest;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/request/ShoppingRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "http://api.assistant.miui.com/shopping"

    invoke-direct {v1, v3, v4}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "componentName"

    invoke-virtual {v1, v3, p2}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v3, "requestType"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->getStatus()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/request/core/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

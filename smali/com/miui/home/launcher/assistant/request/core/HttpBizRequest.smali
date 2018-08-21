.class public abstract Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;
.super Lcom/miui/home/launcher/assistant/request/core/HttpRequest;
.source "HttpBizRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;
    }
.end annotation


# static fields
.field private static final REQUEST_DATA_CACHEED:I = 0x0

.field private static final REQUEST_DATA_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HttpBizRequest"


# instance fields
.field private mListener:Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;

.field private mResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/request/core/HttpRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->setDecryptData(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;)Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mListener:Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mResponse:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelRequest()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mListener:Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mListener:Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;

    :cond_0
    iput-object v1, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mResponse:Ljava/lang/String;

    return-void
.end method

.method public get(Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mListener:Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;

    new-instance v0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;-><init>(Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$1;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->execute()V

    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->requestServer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mResponse:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mResponse:Ljava/lang/String;

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HttpBizRequest"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mResponse:Ljava/lang/String;

    return-void
.end method

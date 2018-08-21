.class public Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;
.super Ljava/lang/Object;
.source "VolleyImgRequest.java"

# interfaces
.implements Lcom/autonavi/its/protocol/ability/net/INetAbility;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V
    .locals 12

    const/4 v5, 0x0

    const-string/jumbo v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    new-instance v0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$3;

    invoke-virtual {p2}, Lcom/autonavi/its/protocol/BaseRequest;->getDecoratedUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;

    invoke-direct {v4, p0, p2}, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;-><init>(Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;Lcom/autonavi/its/protocol/BaseRequest;)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v9, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$2;

    invoke-direct {v9, p0, p2}, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$2;-><init>(Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;Lcom/autonavi/its/protocol/BaseRequest;)V

    move-object v1, p0

    move v6, v5

    move-object v10, p2

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$3;-><init>(Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;ILjava/lang/String;Lcom/autonavi/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/autonavi/volley/Response$ErrorListener;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p3}, Lcom/autonavi/volley/toolbox/ImageRequest;->setTag(Ljava/lang/Object;)Lcom/autonavi/volley/Request;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getRequestQueue()Lcom/autonavi/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/autonavi/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getRequestQueue()Lcom/autonavi/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/volley/RequestQueue;->add(Lcom/autonavi/volley/Request;)Lcom/autonavi/volley/Request;

    return-void

    :cond_1
    move v2, v5

    goto :goto_0
.end method

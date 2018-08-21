.class Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$3;
.super Lcom/autonavi/volley/toolbox/ImageRequest;
.source "VolleyImgRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$req:Lcom/autonavi/its/protocol/BaseRequest;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;ILjava/lang/String;Lcom/autonavi/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/autonavi/volley/Response$ErrorListener;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V
    .locals 10

    iput-object p1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$3;->val$method:Ljava/lang/String;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/autonavi/volley/toolbox/ImageRequest;-><init>(ILjava/lang/String;Lcom/autonavi/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/autonavi/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autonavi/volley/AuthFailureError;
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/BaseRequest;->getHeader()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 3

    const-string/jumbo v1, "POST"

    iget-object v2, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$3;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/BaseRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

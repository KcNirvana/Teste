.class Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1$1;
.super Ljava/lang/Object;
.source "VolleyImgRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;->onResponse(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1$1;->this$1:Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1$1;->this$1:Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/BaseRequest;->dealBusinessData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1$1;->this$1:Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/BaseRequest;->doReqSuccess()V

    return-void
.end method

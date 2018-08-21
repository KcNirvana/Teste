.class Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;
.super Ljava/lang/Object;
.source "VolleyImgRequest.java"

# interfaces
.implements Lcom/autonavi/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/autonavi/volley/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;

.field final synthetic val$req:Lcom/autonavi/its/protocol/BaseRequest;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;->this$0:Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;

    iput-object p2, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v0, p1}, Lcom/autonavi/its/protocol/BaseRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;->this$0:Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;

    invoke-static {v0}, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;->access$000(Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1$1;

    invoke-direct {v1, p0}, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1$1;-><init>(Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest$1;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

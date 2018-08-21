.class Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$1;
.super Landroid/os/Handler;
.source "RestBineryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$1;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$1;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    invoke-static {v0}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$000(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Lcom/autonavi/its/protocol/BaseRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/BaseRequest;->doReqSuccess()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$1;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    invoke-static {v0}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$000(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Lcom/autonavi/its/protocol/BaseRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/BaseRequest;->doReqFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

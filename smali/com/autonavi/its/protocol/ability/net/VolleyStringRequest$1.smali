.class Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;
.super Ljava/lang/Object;
.source "VolleyStringRequest.java"

# interfaces
.implements Lcom/autonavi/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest;

.field final synthetic val$req:Lcom/autonavi/its/protocol/BaseRequest;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest;Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;->this$0:Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest;

    iput-object p2, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventMainThread(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/BaseRequest;->isBusinessSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/BaseRequest;->doReqSuccess()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/BaseRequest;->doReqFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v0, p1}, Lcom/autonavi/its/protocol/BaseRequest;->setResponseContent(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    new-instance v0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1;-><init>(Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1;->start()V

    return-void
.end method

.class Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$2;
.super Ljava/lang/Object;
.source "VolleyStringRequest.java"

# interfaces
.implements Lcom/autonavi/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest;

.field final synthetic val$req:Lcom/autonavi/its/protocol/BaseRequest;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest;Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$2;->this$0:Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest;

    iput-object p2, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$2;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/autonavi/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$2;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v0, p1}, Lcom/autonavi/its/protocol/BaseRequest;->netError(Lcom/autonavi/volley/VolleyError;)V

    return-void
.end method

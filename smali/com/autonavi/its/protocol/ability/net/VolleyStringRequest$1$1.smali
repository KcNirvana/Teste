.class Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1;
.super Ljava/lang/Thread;
.source "VolleyStringRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1;->this$1:Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;

    iput-object p2, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1;->this$1:Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;

    iget-object v1, v1, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    iget-object v2, p0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1;->val$response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autonavi/its/protocol/BaseRequest;->dealBusinessData(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1$1;

    invoke-direct {v1, p0}, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1$1;-><init>(Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1$1;
.super Ljava/lang/Thread;
.source "VolleyByteArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;->onResponse([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;

.field final synthetic val$response:[B


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;[B)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1$1;->this$1:Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;

    iput-object p2, p0, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1$1;->val$response:[B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1$1;->this$1:Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;

    iget-object v1, v1, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1$1;->val$response:[B

    const-string/jumbo v4, "gbk"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/autonavi/its/protocol/BaseRequest;->setResponseContent(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1$1;->this$1:Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;

    iget-object v1, v1, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    iget-object v2, p0, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1$1;->this$1:Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;

    iget-object v2, v2, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v2}, Lcom/autonavi/its/protocol/BaseRequest;->getResponseContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/its/protocol/BaseRequest;->dealBusinessData(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1$1$1;

    invoke-direct {v1, p0}, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1$1$1;-><init>(Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.class Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$3;
.super Lcom/autonavi/its/protocol/ability/net/ByteArrayRequest;
.source "VolleyByteArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest;

.field final synthetic val$req:Lcom/autonavi/its/protocol/BaseRequest;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest;ILjava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest;

    iput-object p6, p0, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/autonavi/its/protocol/ability/net/ByteArrayRequest;-><init>(ILjava/lang/String;Lcom/autonavi/volley/Response$Listener;Lcom/autonavi/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/net/VolleyByteArrayRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/BaseRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

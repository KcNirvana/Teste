.class Lcom/autonavi/its/protocol/BaseRequest$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/BaseRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/ReqCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/protocol/BaseRequest;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest$1;->this$0:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest$1;->this$0:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/its/protocol/BaseRequest$1;->this$0:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-interface {v0, v1}, Lcom/autonavi/its/protocol/ReqCallback;->onStart(Lcom/autonavi/its/protocol/BaseRequest;)V

    return-void
.end method

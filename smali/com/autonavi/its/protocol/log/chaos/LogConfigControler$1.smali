.class Lcom/autonavi/its/protocol/log/chaos/LogConfigControler$1;
.super Ljava/lang/Object;
.source "LogConfigControler.java"

# interfaces
.implements Lcom/autonavi/its/protocol/ReqCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->downloadConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler$1;->this$0:Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    return-void
.end method

.method public onNetError(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 1

    invoke-static {}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->instance()Lcom/autonavi/its/protocol/log/chaos/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->updateConfigureTask()V

    return-void
.end method

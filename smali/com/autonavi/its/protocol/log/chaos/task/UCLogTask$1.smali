.class Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask$1;
.super Ljava/lang/Object;
.source "UCLogTask.java"

# interfaces
.implements Lcom/autonavi/its/protocol/ReqCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;->douploadLog(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask$1;->this$0:Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;

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

    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask$1;->this$0:Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;->deleteUcLog()V

    return-void
.end method

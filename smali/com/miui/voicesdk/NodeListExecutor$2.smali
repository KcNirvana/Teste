.class Lcom/miui/voicesdk/NodeListExecutor$2;
.super Ljava/lang/Object;
.source "NodeListExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/voicesdk/NodeListExecutor;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/voicesdk/NodeListExecutor;


# direct methods
.method constructor <init>(Lcom/miui/voicesdk/NodeListExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/NodeListExecutor$2;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    const-string/jumbo v2, "onServiceConnected "

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$2;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v0}, Lcom/miui/voicesdk/NodeListExecutor;->access$400(Lcom/miui/voicesdk/NodeListExecutor;)Lcom/miui/voicesdk/ActionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$2;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v0}, Lcom/miui/voicesdk/NodeListExecutor;->access$400(Lcom/miui/voicesdk/NodeListExecutor;)Lcom/miui/voicesdk/ActionCallback;

    move-result-object v0

    new-instance v1, Lcom/miui/voicesdk/ActionStatus;

    const/4 v2, 0x0

    sget v3, Lcom/miui/voicesdk/ActionStatus;->STATUS_SERVICE_CON:I

    invoke-direct {v1, v2, v3}, Lcom/miui/voicesdk/ActionStatus;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/miui/voicesdk/ActionCallback;->onActionCallback(Lcom/miui/voicesdk/ActionStatus;)Z

    :cond_0
    return-void
.end method

.class Lcom/miui/voicesdk/NodeListExecutor$3;
.super Ljava/lang/Object;
.source "NodeListExecutor.java"

# interfaces
.implements Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voicesdk/NodeListExecutor;
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

    iput-object p1, p0, Lcom/miui/voicesdk/NodeListExecutor$3;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstEnd(IZ)V
    .locals 4

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInstEnd -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$3;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$502(Lcom/miui/voicesdk/NodeListExecutor;Z)Z

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mIsInstRunning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/voicesdk/NodeListExecutor$3;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v3}, Lcom/miui/voicesdk/NodeListExecutor;->access$500(Lcom/miui/voicesdk/NodeListExecutor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$3;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$3;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$600(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    invoke-static {}, Lcom/miui/voicesdk/util/DeviceConfig;->getScreenHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$602(Lcom/miui/voicesdk/NodeListExecutor;I)I

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$3;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$3;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$700(Lcom/miui/voicesdk/NodeListExecutor;I)V

    :cond_1
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInstEnd mSimulateScrollDuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/voicesdk/NodeListExecutor$3;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v3}, Lcom/miui/voicesdk/NodeListExecutor;->access$600(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$3;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$3;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/miui/voicesdk/NodeListExecutor;->access$800(Lcom/miui/voicesdk/NodeListExecutor;IZ)V

    goto :goto_0
.end method

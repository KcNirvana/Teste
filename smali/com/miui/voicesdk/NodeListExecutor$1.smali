.class Lcom/miui/voicesdk/NodeListExecutor$1;
.super Landroid/os/Handler;
.source "NodeListExecutor.java"


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
.method constructor <init>(Lcom/miui/voicesdk/NodeListExecutor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v0}, Lcom/miui/voicesdk/NodeListExecutor;->access$000(Lcom/miui/voicesdk/NodeListExecutor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v0}, Lcom/miui/voicesdk/NodeListExecutor;->access$000(Lcom/miui/voicesdk/NodeListExecutor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/ActionNode;

    invoke-virtual {v0}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/voicesdk/util/Utils;->isScreencapCatcher(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v0}, Lcom/miui/voicesdk/NodeListExecutor;->access$000(Lcom/miui/voicesdk/NodeListExecutor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/ActionNode;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/voicesdk/ActionNode;->setPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v0}, Lcom/miui/voicesdk/NodeListExecutor;->access$000(Lcom/miui/voicesdk/NodeListExecutor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/ActionNode;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/voicesdk/ActionNode;->setId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v0}, Lcom/miui/voicesdk/NodeListExecutor;->access$000(Lcom/miui/voicesdk/NodeListExecutor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/ActionNode;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/voicesdk/ActionNode;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v0}, Lcom/miui/voicesdk/NodeListExecutor;->access$000(Lcom/miui/voicesdk/NodeListExecutor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/ActionNode;

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$000(Lcom/miui/voicesdk/NodeListExecutor;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v2}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/voicesdk/ActionNode;

    invoke-virtual {v1}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/voicesdk/util/Utils;->insertScreencapCatcherInExtra(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/voicesdk/ActionNode;->setExtra(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG_ID_NOFOUND Screencap2 pos -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v3}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pos -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v3}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/voicesdk/NodeListExecutor;->access$200(Lcom/miui/voicesdk/NodeListExecutor;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v0}, Lcom/miui/voicesdk/NodeListExecutor;->access$000(Lcom/miui/voicesdk/NodeListExecutor;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v0}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$000(Lcom/miui/voicesdk/NodeListExecutor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor$1;->this$0:Lcom/miui/voicesdk/NodeListExecutor;

    invoke-static {v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$100(Lcom/miui/voicesdk/NodeListExecutor;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/voicesdk/NodeListExecutor;->access$300(Lcom/miui/voicesdk/NodeListExecutor;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

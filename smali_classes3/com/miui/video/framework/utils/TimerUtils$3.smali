.class Lcom/miui/video/framework/utils/TimerUtils$3;
.super Landroid/os/Handler;
.source "TimerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/framework/utils/TimerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/framework/utils/TimerUtils;


# direct methods
.method constructor <init>(Lcom/miui/video/framework/utils/TimerUtils;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/utils/TimerUtils$3;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils$3;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TimerUtils;->access$400(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils$3;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TimerUtils;->access$400(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils$3;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TimerUtils;->access$400(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/util/SparseArray;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/framework/utils/TimerUtils$ITimerListener;

    invoke-interface {v0}, Lcom/miui/video/framework/utils/TimerUtils$ITimerListener;->onTimer()V

    goto :goto_0

    :cond_0
    return-void
.end method

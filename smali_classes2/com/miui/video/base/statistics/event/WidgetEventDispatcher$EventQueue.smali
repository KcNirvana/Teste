.class Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;
.super Ljava/lang/Object;
.source "WidgetEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventQueue"
.end annotation


# instance fields
.field mThread:Landroid/os/HandlerThread;

.field mWorkHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;


# direct methods
.method constructor <init>(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UIEventDispatcher-video"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue$1;

    iget-object v1, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue$1;-><init>(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;Landroid/os/Looper;Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;)V

    iput-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/miui/video/base/statistics/event/WidgetEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/video/base/statistics/event/WidgetEvent;

    invoke-static {v0, p1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->access$100(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;Lcom/miui/video/base/statistics/event/WidgetEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public quit()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

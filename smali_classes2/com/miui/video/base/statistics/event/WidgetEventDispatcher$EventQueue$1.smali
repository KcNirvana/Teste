.class Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue$1;
.super Landroid/os/Handler;
.source "WidgetEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;-><init>(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;

.field final synthetic val$this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;


# direct methods
.method constructor <init>(Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;Landroid/os/Looper;Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue$1;->this$1:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;

    iput-object p3, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue$1;->val$this$0:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue$1;->this$1:Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher$EventQueue;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

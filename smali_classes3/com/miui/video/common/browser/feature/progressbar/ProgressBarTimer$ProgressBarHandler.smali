.class Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;
.super Landroid/os/Handler;
.source "ProgressBarTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressBarHandler"
.end annotation


# static fields
.field private static final MSG_UPDATE:I = 0x2a


# instance fields
.field private isTerminal:Z

.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->isTerminal:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->reference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;

    invoke-virtual {p1}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->notifyChanged()V

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public startTimer()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->isTerminal:Z

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopTimer()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->isTerminal:Z

    return-void
.end method

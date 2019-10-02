.class public Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;
.super Ljava/lang/Object;
.source "ProgressBarTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;


# instance fields
.field private handler:Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;

.field private final webViewProgressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->webViewProgressList:Ljava/util/List;

    new-instance v0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;

    invoke-direct {v0, p0}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;-><init>(Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;)V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->handler:Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;

    return-void
.end method

.method public static getInstance()Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;
    .locals 2

    sget-object v0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->instance:Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->instance:Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;

    invoke-direct {v1}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;-><init>()V

    sput-object v1, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->instance:Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->instance:Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->webViewProgressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->webViewProgressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->webViewProgressList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->handler:Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;

    invoke-virtual {p1}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->startTimer()V

    :cond_1
    return-void
.end method

.method public notifyChanged()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->webViewProgressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    invoke-virtual {v1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->updateByTimer()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->webViewProgressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->webViewProgressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->webViewProgressList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->handler:Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;

    invoke-virtual {p1}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer$ProgressBarHandler;->stopTimer()V

    :cond_1
    return-void
.end method

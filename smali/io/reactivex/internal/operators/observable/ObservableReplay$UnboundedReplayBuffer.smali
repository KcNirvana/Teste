.class final Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;
.super Ljava/util/ArrayList;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    return-void
.end method

.method public next(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    return-void
.end method

.method public replay(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->getAndIncrement()I

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->child:Lio/reactivex/Observer;

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->isDisposed()Z

    move-result v6

    if-nez v6, :cond_0

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    if-ge v1, v5, :cond_4

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->isDisposed()Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index:Ljava/lang/Object;

    neg-int v6, v3

    invoke-virtual {p1, v6}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

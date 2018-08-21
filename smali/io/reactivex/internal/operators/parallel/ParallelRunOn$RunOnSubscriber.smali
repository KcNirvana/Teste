.class final Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
.source "ParallelRunOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeeb976b788f368aL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;I",
            "Lio/reactivex/internal/queue/SpscArrayQueue",
            "<TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;-><init>(ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 20

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->consumed:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    move-object/from16 v0, p0

    iget v9, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->limit:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    const-wide/16 v6, 0x0

    :cond_1
    :goto_1
    cmp-long v17, v6, v14

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->cancelled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    invoke-virtual {v12}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    :goto_2
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->done:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    invoke-virtual {v12}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    invoke-interface {v2, v8}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lio/reactivex/Scheduler$Worker;->dispose()V

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Lio/reactivex/internal/queue/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    const/4 v5, 0x1

    :goto_3
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lio/reactivex/Scheduler$Worker;->dispose()V

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_7

    :cond_6
    cmp-long v17, v6, v14

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->cancelled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    invoke-virtual {v12}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    goto :goto_2

    :cond_7
    invoke-interface {v2, v13}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v18, 0x1

    add-long v6, v6, v18

    add-int/lit8 v3, v3, 0x1

    move v11, v3

    if-ne v11, v9, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    move-object/from16 v17, v0

    int-to-long v0, v11

    move-wide/from16 v18, v0

    invoke-interface/range {v17 .. v19}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->done:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v8, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v8, :cond_9

    invoke-virtual {v12}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    invoke-interface {v2, v8}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lio/reactivex/Scheduler$Worker;->dispose()V

    goto :goto_2

    :cond_9
    invoke-virtual {v12}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lio/reactivex/Scheduler$Worker;->dispose()V

    goto/16 :goto_2

    :cond_a
    const-wide/16 v18, 0x0

    cmp-long v17, v6, v18

    if-eqz v17, :cond_b

    const-wide v18, 0x7fffffffffffffffL

    cmp-long v17, v14, v18

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v17, v0

    neg-long v0, v6

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->get()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v10, :cond_c

    move-object/from16 v0, p0

    iput v3, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->consumed:I

    neg-int v0, v10

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->addAndGet(I)I

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_2

    :cond_c
    move/from16 v10, v16

    goto/16 :goto_0
.end method

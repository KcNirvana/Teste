.class final Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableCache.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final CANCELLED:J = -0x1L

.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final child:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field index:I

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->child:Lorg/reactivestreams/Subscriber;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->removeChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V

    :cond_0
    return-void
.end method

.method public replay()V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->getAndIncrement()I

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->child:Lorg/reactivestreams/Subscriber;

    move-object/from16 v0, p0

    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_2
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-ltz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v14}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->size()I

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentBuffer:[Ljava/lang/Object;

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v14}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->head()[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentBuffer:[Ljava/lang/Object;

    :cond_3
    array-length v14, v2

    add-int/lit8 v7, v14, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->index:I

    move-object/from16 v0, p0

    iget v5, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentIndexInBuffer:I

    const/4 v13, 0x0

    :goto_1
    if-ge v4, v12, :cond_5

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_5

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    if-ne v5, v7, :cond_4

    aget-object v14, v2, v7

    check-cast v14, [Ljava/lang/Object;

    move-object v2, v14

    check-cast v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    :cond_4
    aget-object v8, v2, v5

    invoke-static {v8, v3}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    move-result v14

    if-nez v14, :cond_0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v14, 0x1

    sub-long/2addr v10, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_7

    aget-object v8, v2, v5

    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto/16 :goto_0

    :cond_6
    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v14

    invoke-interface {v3, v14}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v13, :cond_8

    int-to-long v14, v13

    invoke-static {v9, v14, v15}, Lio/reactivex/internal/util/BackpressureHelper;->producedCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_8
    move-object/from16 v0, p0

    iput v4, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->index:I

    move-object/from16 v0, p0

    iput v5, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentIndexInBuffer:I

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentBuffer:[Ljava/lang/Object;

    :cond_9
    neg-int v14, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_0
.end method

.method public request(J)V
    .locals 7

    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v2

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    goto :goto_0
.end method

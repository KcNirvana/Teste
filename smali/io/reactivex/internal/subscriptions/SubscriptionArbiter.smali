.class public Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SubscriptionArbiter.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = -0x1e62bfbf4b5b12feL


# instance fields
.field actual:Lorg/reactivestreams/Subscription;

.field volatile cancelled:Z

.field final missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

.field final missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field final missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field requested:J

.field protected unbounded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    goto :goto_0
.end method

.method final drain()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    return-void

    :cond_0
    return-void
.end method

.method final drainLoop()V
    .locals 24

    const/4 v5, 0x1

    const-wide/16 v14, 0x0

    const/4 v11, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/reactivestreams/Subscription;

    if-nez v10, :cond_7

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v8

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v6

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-wide v12, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    const-wide v20, 0x7fffffffffffffffL

    cmp-long v20, v12, v20

    if-eqz v20, :cond_4

    invoke-static {v12, v13, v8, v9}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v16

    const-wide v20, 0x7fffffffffffffffL

    cmp-long v20, v16, v20

    if-eqz v20, :cond_b

    sub-long v18, v16, v6

    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-ltz v20, :cond_a

    const/16 v20, 0x1

    :goto_1
    if-nez v20, :cond_3

    invoke-static/range {v18 .. v19}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->reportMoreProduced(J)V

    const-wide/16 v18, 0x0

    :cond_3
    move-wide/from16 v12, v18

    :goto_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    :cond_4
    if-nez v10, :cond_c

    if-nez v4, :cond_e

    :cond_5
    :goto_3
    neg-int v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-eqz v20, :cond_6

    invoke-interface {v11, v14, v15}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/reactivestreams/Subscription;

    goto/16 :goto_0

    :cond_8
    if-nez v4, :cond_9

    :goto_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Lorg/reactivestreams/Subscription;->cancel()V

    goto :goto_3

    :cond_9
    invoke-interface {v4}, Lorg/reactivestreams/Subscription;->cancel()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    goto :goto_4

    :cond_a
    const/16 v20, 0x0

    goto :goto_1

    :cond_b
    move-wide/from16 v12, v16

    goto :goto_2

    :cond_c
    if-nez v4, :cond_d

    :goto_5
    move-object/from16 v0, p0

    iput-object v10, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-eqz v20, :cond_5

    invoke-static {v14, v15, v12, v13}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v14

    move-object v11, v10

    goto :goto_3

    :cond_d
    invoke-interface {v4}, Lorg/reactivestreams/Subscription;->cancel()V

    goto :goto_5

    :cond_e
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_5

    invoke-static {v14, v15, v8, v9}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v14

    move-object v11, v4

    goto :goto_3
.end method

.method public final produced(J)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->get()I

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-object v4, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v5, v4}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->compareAndSet(II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v0, v6

    if-eqz v6, :cond_4

    sub-long v2, v0, p1

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_5

    :goto_0
    if-nez v4, :cond_3

    invoke-static {v2, v3}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->reportMoreProduced(J)V

    const-wide/16 v2, 0x0

    :cond_3
    iput-wide v2, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->decrementAndGet()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    return-void

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final request(J)V
    .locals 9

    const-wide v6, 0x7fffffffffffffffL

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->get()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v4, v5}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    invoke-static {v2, v3, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_4

    iput-boolean v5, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    if-nez v0, :cond_6

    :goto_2
    return-void

    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    goto :goto_1

    :cond_6
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_2
.end method

.method public final setSubscription(Lorg/reactivestreams/Subscription;)V
    .locals 6

    const/4 v4, 0x0

    iget-boolean v1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "s is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->get()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    if-nez v0, :cond_6

    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v4, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    if-nez v0, :cond_4

    :goto_1
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    iget-wide v2, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_3
    return-void

    :cond_4
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    goto :goto_0
.end method

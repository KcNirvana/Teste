.class final Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ParallelSortedJoin.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelSortedJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SortedJoinSubscription"
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
.field private static final serialVersionUID:J = 0x30527af9756114d9L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final indexes:[I

.field final lists:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILjava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;I",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->actual:Lorg/reactivestreams/Subscriber;

    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->comparator:Ljava/util/Comparator;

    new-array v1, p2, [Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    new-instance v2, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    invoke-direct {v2, p0, v0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;-><init>(Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    new-array v2, p2, [Ljava/util/List;

    iput-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    new-array v2, p2, [I

    iput-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->indexes:[I

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method cancelAll()V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method drain()V
    .locals 28

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->getAndIncrement()I

    move-result v24

    if-eqz v24, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->actual:Lorg/reactivestreams/Subscriber;

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->indexes:[I

    array-length v0, v13

    move/from16 v19, v0

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v20

    const-wide/16 v6, 0x0

    :goto_2
    cmp-long v24, v6, v20

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v9}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    const/16 v17, -0x1

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    aget-object v14, v15, v11

    aget v12, v13, v11

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v12, :cond_4

    if-nez v16, :cond_5

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v11

    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->comparator:Ljava/util/Comparator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    if-lez v24, :cond_6

    const/16 v22, 0x1

    :goto_5
    if-eqz v22, :cond_4

    move-object/from16 v16, v5

    move/from16 v17, v11

    goto :goto_4

    :cond_6
    const/16 v22, 0x0

    goto :goto_5

    :catch_0
    move-exception v10

    invoke-static {v10}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    invoke-static {v10}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Throwable;

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    if-nez v16, :cond_9

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    aget v24, v13, v17

    add-int/lit8 v24, v24, 0x1

    aput v24, v13, v17

    const-wide/16 v24, 0x1

    add-long v6, v6, v24

    goto/16 :goto_2

    :cond_a
    cmp-long v24, v6, v20

    if-nez v24, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v9}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_c
    const/4 v8, 0x1

    const/4 v11, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v11, v0, :cond_d

    aget v24, v13, v11

    aget-object v25, v15, v11

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    const/4 v8, 0x0

    :cond_d
    if-eqz v8, :cond_f

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_f
    const-wide/16 v24, 0x0

    cmp-long v24, v6, v24

    if-eqz v24, :cond_10

    const-wide v24, 0x7fffffffffffffffL

    cmp-long v24, v20, v24

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v24, v0

    neg-long v0, v6

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->get()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->addAndGet(I)I

    move-result v18

    if-nez v18, :cond_1

    goto/16 :goto_0

    :cond_11
    move/from16 v18, v23

    goto/16 :goto_1
.end method

.method innerError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method innerNext(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    aput-object p1, v0, p2

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    :cond_0
    return-void
.end method

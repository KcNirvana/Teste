.class public Lio/reactivex/internal/util/LinkedArrayList;
.super Ljava/lang/Object;
.source "LinkedArrayList.java"


# instance fields
.field final capacityHint:I

.field head:[Ljava/lang/Object;

.field indexInTail:I

.field volatile size:I

.field tail:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    if-nez v1, :cond_0

    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    iget-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    iput-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    aput-object p1, v1, v4

    iput v3, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    iput v3, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    iget v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    iget-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    aput-object v0, v1, v2

    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iput v3, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    aput-object p1, v1, v2

    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    goto :goto_0
.end method

.method public head()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    iget v5, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v6, v5, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lio/reactivex/internal/util/LinkedArrayList;->head()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v3

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    const/4 v3, 0x0

    aget-object v6, v1, v0

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

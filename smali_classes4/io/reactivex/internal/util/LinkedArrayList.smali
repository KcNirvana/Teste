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
    .locals 4

    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    aput-object p1, v0, v1

    iput v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    iput v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    iget v3, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    iget-object p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    aput-object v0, p1, v1

    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iput v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    iget p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    aput-object p1, v0, v1

    iget p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    iget p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    :goto_0
    return-void
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
    .locals 8

    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lio/reactivex/internal/util/LinkedArrayList;->head()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x0

    :cond_0
    if-ge v3, v1, :cond_1

    aget-object v7, v5, v6

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v0, :cond_0

    aget-object v5, v5, v0

    check-cast v5, [Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

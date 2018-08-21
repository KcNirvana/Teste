.class Lcom/autonavi/its/common/IntHashMap;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/common/IntHashMap$Entry;
    }
.end annotation


# instance fields
.field private transient count:I

.field private final loadFactor:F

.field private transient table:[Lcom/autonavi/its/common/IntHashMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x14

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/autonavi/its/common/IntHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/autonavi/its/common/IntHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    :cond_2
    iput p2, p0, Lcom/autonavi/its/common/IntHashMap;->loadFactor:F

    new-array v0, p1, [Lcom/autonavi/its/common/IntHashMap$Entry;

    iput-object v0, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/autonavi/its/common/IntHashMap;->threshold:I

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/autonavi/its/common/IntHashMap;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-object v3, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    array-length v1, v3

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_3

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_1
    iget-object v0, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public containsKey(I)Z
    .locals 6

    iget-object v3, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    move v1, p1

    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    aget-object v0, v3, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v4, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    iget-object v0, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/its/common/IntHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    move v1, p1

    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    aget-object v0, v3, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v4, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_0

    iget-object v4, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->value:Ljava/lang/Object;

    :goto_1
    return-object v4

    :cond_0
    iget-object v0, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/autonavi/its/common/IntHashMap;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const v7, 0x7fffffff

    iget-object v4, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    move v1, p1

    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    aget-object v0, v4, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v5, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_0

    iget-object v3, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p2, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->value:Ljava/lang/Object;

    :goto_1
    return-object v3

    :cond_0
    iget-object v0, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/autonavi/its/common/IntHashMap;->count:I

    iget v6, p0, Lcom/autonavi/its/common/IntHashMap;->threshold:I

    if-lt v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/its/common/IntHashMap;->rehash()V

    iget-object v4, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    :cond_2
    new-instance v0, Lcom/autonavi/its/common/IntHashMap$Entry;

    aget-object v5, v4, v2

    invoke-direct {v0, v1, p1, p2, v5}, Lcom/autonavi/its/common/IntHashMap$Entry;-><init>(IILjava/lang/Object;Lcom/autonavi/its/common/IntHashMap$Entry;)V

    aput-object v0, v4, v2

    iget v5, p0, Lcom/autonavi/its/common/IntHashMap;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/autonavi/its/common/IntHashMap;->count:I

    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected rehash()V
    .locals 11

    iget-object v9, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    array-length v7, v9

    iget-object v8, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v4, v9, 0x1

    new-array v5, v4, [Lcom/autonavi/its/common/IntHashMap$Entry;

    int-to-float v9, v4

    iget v10, p0, Lcom/autonavi/its/common/IntHashMap;->loadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/autonavi/its/common/IntHashMap;->threshold:I

    iput-object v5, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    move v1, v7

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_1

    aget-object v6, v8, v1

    :goto_1
    if-eqz v6, :cond_0

    move-object v0, v6

    iget-object v6, v6, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    iget v9, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->hash:I

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int v3, v9, v4

    aget-object v9, v5, v3

    iput-object v9, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    aput-object v0, v5, v3

    goto :goto_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 9

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/autonavi/its/common/IntHashMap;->table:[Lcom/autonavi/its/common/IntHashMap$Entry;

    move v1, p1

    const v7, 0x7fffffff

    and-int/2addr v7, v1

    array-length v8, v5

    rem-int v2, v7, v8

    aget-object v0, v5, v2

    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v7, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->hash:I

    if-ne v7, v1, :cond_1

    if-eqz v4, :cond_0

    iget-object v7, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    iput-object v7, v4, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    :goto_1
    iget v7, p0, Lcom/autonavi/its/common/IntHashMap;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/autonavi/its/common/IntHashMap;->count:I

    iget-object v3, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->value:Ljava/lang/Object;

    iput-object v6, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->value:Ljava/lang/Object;

    :goto_2
    return-object v3

    :cond_0
    iget-object v7, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    aput-object v7, v5, v2

    goto :goto_1

    :cond_1
    move-object v4, v0

    iget-object v0, v0, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    goto :goto_0

    :cond_2
    move-object v3, v6

    goto :goto_2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/common/IntHashMap;->count:I

    return v0
.end method

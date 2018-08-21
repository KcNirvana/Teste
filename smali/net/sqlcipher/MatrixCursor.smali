.class public Lnet/sqlcipher/MatrixCursor;
.super Lnet/sqlcipher/AbstractCursor;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sqlcipher/MatrixCursor$RowBuilder;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private rowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lnet/sqlcipher/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lnet/sqlcipher/AbstractCursor;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    iput-object p1, p0, Lnet/sqlcipher/MatrixCursor;->columnNames:[Ljava/lang/String;

    array-length v0, p1

    iput v0, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lnet/sqlcipher/MatrixCursor;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method private addRow(Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    if-eq v2, v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "columnNames.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", columnValues.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v3, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    iget-object v1, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    add-int v3, p2, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-le p1, v2, :cond_1

    iget-object v1, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    iget-object v2, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    if-ge v0, p1, :cond_0

    move v0, p1

    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    iget-object v2, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Lnet/sqlcipher/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sqlcipher/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->mPos:I

    if-gez v0, :cond_2

    new-instance v0, Lnet/sqlcipher/CursorIndexOutOfBoundsException;

    const-string/jumbo v1, "Before first row."

    invoke-direct {v0, v1}, Lnet/sqlcipher/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->mPos:I

    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    if-lt v0, v1, :cond_3

    new-instance v0, Lnet/sqlcipher/CursorIndexOutOfBoundsException;

    const-string/jumbo v1, "After last row."

    invoke-direct {v0, v1}, Lnet/sqlcipher/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->mPos:I

    iget v2, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public addRow(Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    iget v6, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    iget v7, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    mul-int v5, v6, v7

    iget v6, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    add-int v3, v5, v6

    invoke-direct {p0, v3}, Lnet/sqlcipher/MatrixCursor;->ensureCapacity(I)V

    instance-of v6, p1, Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5}, Lnet/sqlcipher/MatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    :goto_0
    return-void

    :cond_0
    move v1, v5

    iget-object v4, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v3, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "columnValues.size() > columnNames.length"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    goto :goto_1

    :cond_2
    if-eq v1, v3, :cond_3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "columnValues.size() < columnNames.length"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    iget v6, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    goto :goto_0
.end method

.method public addRow([Ljava/lang/Object;)V
    .locals 4

    array-length v1, p1

    iget v2, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", columnValues.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    iget v2, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    mul-int v0, v1, v2

    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lnet/sqlcipher/MatrixCursor;->ensureCapacity(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    iget v3, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 4

    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2

    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2

    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 4

    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2

    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/sqlcipher/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRow()Lnet/sqlcipher/MatrixCursor$RowBuilder;
    .locals 4

    iget v2, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    iget v2, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    iget v3, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    mul-int v0, v2, v3

    invoke-direct {p0, v0}, Lnet/sqlcipher/MatrixCursor;->ensureCapacity(I)V

    iget v2, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    sub-int v1, v0, v2

    new-instance v2, Lnet/sqlcipher/MatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1, v0}, Lnet/sqlcipher/MatrixCursor$RowBuilder;-><init>(Lnet/sqlcipher/MatrixCursor;II)V

    return-object v2
.end method

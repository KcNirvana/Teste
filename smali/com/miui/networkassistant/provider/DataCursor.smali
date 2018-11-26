.class public Lcom/miui/networkassistant/provider/DataCursor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private mCurrentRow:I

.field private mRows:Ljava/util/ArrayList;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mColumns:[Ljava/lang/String;

    return-void
.end method

.method private getCurrentRow()Lcom/miui/networkassistant/provider/DataCursor$DataRow;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    return-object v0
.end method


# virtual methods
.method public addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mColumns:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "column count does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0

    return-void
.end method

.method public deactivate()V
    .locals 0

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mColumns:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/provider/DataCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mColumns:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mColumns:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mColumns:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/DataCursor;->getCurrentRow()Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/DataCursor;->getCurrentRow()Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/DataCursor;->getCurrentRow()Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/DataCursor;->getCurrentRow()Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    return v0
.end method

.method public getShort(I)S
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/DataCursor;->getCurrentRow()Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/DataCursor;->getCurrentRow()Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/DataCursor;->getCurrentRow()Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->getType(I)I

    move-result v0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClosed()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFirst()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLast()Z
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/DataCursor;->getCurrentRow()Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/provider/DataCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public moveToLast()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public moveToNext()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/provider/DataCursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iput p1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    iget v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    if-gt v0, v1, :cond_0

    iput v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    return v2

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mCurrentRow:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/provider/DataCursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public removeRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.class public Lcom/miui/calendar/util/SimpleProvider;
.super Ljava/lang/Object;
.source "SimpleProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/SimpleProvider$ResultRow;,
        Lcom/miui/calendar/util/SimpleProvider$Result;
    }
.end annotation


# instance fields
.field private mLimit:I

.field private mOrder:Ljava/lang/String;

.field private mProjections:[Ljava/lang/String;

.field private mQueryCount:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSelectionBuilder:Ljava/lang/StringBuilder;

.field private mTypes:[Ljava/lang/Class;

.field private mUri:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mLimit:I

    return-void
.end method

.method private static checkUri(Landroid/net/Uri;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Uri must be specified!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkValues(Landroid/content/ContentValues;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ContentValues must be specified!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static connect(Landroid/content/ContentResolver;)Lcom/miui/calendar/util/SimpleProvider;
    .locals 1

    new-instance v0, Lcom/miui/calendar/util/SimpleProvider;

    invoke-direct {v0}, Lcom/miui/calendar/util/SimpleProvider;-><init>()V

    iput-object p0, v0, Lcom/miui/calendar/util/SimpleProvider;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static connect(Landroid/content/Context;)Lcom/miui/calendar/util/SimpleProvider;
    .locals 2

    new-instance v0, Lcom/miui/calendar/util/SimpleProvider;

    invoke-direct {v0}, Lcom/miui/calendar/util/SimpleProvider;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/calendar/util/SimpleProvider;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private ensureTypes(I)V
    .locals 3

    iget-object v1, p0, Lcom/miui/calendar/util/SimpleProvider;->mTypes:[Ljava/lang/Class;

    if-nez v1, :cond_0

    new-array v1, p1, [Ljava/lang/Class;

    iput-object v1, p0, Lcom/miui/calendar/util/SimpleProvider;->mTypes:[Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/miui/calendar/util/SimpleProvider;->mTypes:[Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getCursorValue(Landroid/database/Cursor;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const-class v0, Ljava/lang/Short;

    if-ne v0, p2, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Integer;

    if-ne v0, p2, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/Long;

    if-ne v0, p2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v0, Ljava/lang/Float;

    if-ne v0, p2, :cond_3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-class v0, Ljava/lang/Double;

    if-ne v0, p2, :cond_4

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSelection(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSelectionInString(Ljava/util/Iterator;Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-class v2, Ljava/lang/String;

    if-ne v2, p1, :cond_1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public delete()I
    .locals 4

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/miui/calendar/util/SimpleProvider;->checkUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/calendar/util/SimpleProvider;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/miui/calendar/util/SimpleProvider;->getSelection(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insert()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/miui/calendar/util/SimpleProvider;->checkUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mValues:Landroid/content/ContentValues;

    invoke-static {v0}, Lcom/miui/calendar/util/SimpleProvider;->checkValues(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/calendar/util/SimpleProvider;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/calendar/util/SimpleProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public query()Lcom/miui/calendar/util/SimpleProvider$Result;
    .locals 11

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/miui/calendar/util/SimpleProvider;->checkUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/miui/calendar/util/SimpleProvider;->getSelection(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/miui/calendar/util/SimpleProvider$Result;->create()Lcom/miui/calendar/util/SimpleProvider$Result;

    move-result-object v10

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/calendar/util/SimpleProvider;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/calendar/util/SimpleProvider;->mProjections:[Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/calendar/util/SimpleProvider;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mQueryCount:Z

    if-eqz v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v10, v0}, Lcom/miui/calendar/util/SimpleProvider$Result;->access$002(Lcom/miui/calendar/util/SimpleProvider$Result;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v10

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mProjections:[Ljava/lang/String;

    array-length v9, v0

    invoke-direct {p0, v9}, Lcom/miui/calendar/util/SimpleProvider;->ensureTypes(I)V

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_4

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mTypes:[Ljava/lang/Class;

    aget-object v0, v0, v7

    invoke-static {v6, v7, v0}, Lcom/miui/calendar/util/SimpleProvider;->getCursorValue(Landroid/database/Cursor;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v8}, Lcom/miui/calendar/util/SimpleProvider$ResultRow;->create([Ljava/lang/Object;)Lcom/miui/calendar/util/SimpleProvider$ResultRow;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/calendar/util/SimpleProvider$Result;->addRow(Lcom/miui/calendar/util/SimpleProvider$ResultRow;)V

    invoke-static {v10}, Lcom/miui/calendar/util/SimpleProvider$Result;->access$000(Lcom/miui/calendar/util/SimpleProvider$Result;)I

    move-result v0

    iget v1, p0, Lcom/miui/calendar/util/SimpleProvider;->mLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public queryCount()I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mQueryCount:Z

    invoke-virtual {p0}, Lcom/miui/calendar/util/SimpleProvider;->query()Lcom/miui/calendar/util/SimpleProvider$Result;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/calendar/util/SimpleProvider$Result;->access$000(Lcom/miui/calendar/util/SimpleProvider$Result;)I

    move-result v0

    return v0
.end method

.method public queryFirst()Lcom/miui/calendar/util/SimpleProvider$Result;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/SimpleProvider;->withLimit(I)Lcom/miui/calendar/util/SimpleProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/calendar/util/SimpleProvider;->query()Lcom/miui/calendar/util/SimpleProvider$Result;

    move-result-object v0

    return-object v0
.end method

.method public update()I
    .locals 5

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/miui/calendar/util/SimpleProvider;->checkUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mValues:Landroid/content/ContentValues;

    invoke-static {v0}, Lcom/miui/calendar/util/SimpleProvider;->checkValues(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/calendar/util/SimpleProvider;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/calendar/util/SimpleProvider;->mValues:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/miui/calendar/util/SimpleProvider;->getSelection(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs withArgs([Ljava/lang/Object;)Lcom/miui/calendar/util/SimpleProvider;
    .locals 4

    array-length v1, p1

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionArgs:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionArgs:[Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs withArgs([Ljava/lang/String;)Lcom/miui/calendar/util/SimpleProvider;
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public withLimit(I)Lcom/miui/calendar/util/SimpleProvider;
    .locals 0

    iput p1, p0, Lcom/miui/calendar/util/SimpleProvider;->mLimit:I

    return-object p0
.end method

.method public withOrder(Ljava/lang/String;)Lcom/miui/calendar/util/SimpleProvider;
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/util/SimpleProvider;->mOrder:Ljava/lang/String;

    return-object p0
.end method

.method public varargs withProjection([Ljava/lang/String;)Lcom/miui/calendar/util/SimpleProvider;
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/util/SimpleProvider;->mProjections:[Ljava/lang/String;

    return-object p0
.end method

.method public withSelection(Ljava/lang/String;)Lcom/miui/calendar/util/SimpleProvider;
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionBuilder:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider;->mSelectionBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public varargs withType([Ljava/lang/Class;)Lcom/miui/calendar/util/SimpleProvider;
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/util/SimpleProvider;->mTypes:[Ljava/lang/Class;

    return-object p0
.end method

.method public withUri(Landroid/net/Uri;)Lcom/miui/calendar/util/SimpleProvider;
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/util/SimpleProvider;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public withValues(Landroid/content/ContentValues;)Lcom/miui/calendar/util/SimpleProvider;
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/util/SimpleProvider;->mValues:Landroid/content/ContentValues;

    return-object p0
.end method

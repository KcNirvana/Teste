.class public Lcom/miui/antispam/util/i;
.super Landroid/database/CursorWrapper;
.source ""


# instance fields
.field private Zl:Landroid/database/Cursor;

.field private Zm:I

.field private Zn:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Comparator;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antispam/util/i;->Zn:Ljava/util/List;

    iput v0, p0, Lcom/miui/antispam/util/i;->Zm:I

    iput-object p1, p0, Lcom/miui/antispam/util/i;->Zl:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/antispam/util/i;->Zl:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/util/i;->Zl:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/util/i;->Zl:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v1, p0, Lcom/miui/antispam/util/i;->Zl:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/antispam/util/j;

    invoke-direct {v1, p0}, Lcom/miui/antispam/util/j;-><init>(Lcom/miui/antispam/util/i;)V

    iget-object v2, p0, Lcom/miui/antispam/util/i;->Zl:Landroid/database/Cursor;

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    iput v0, v1, Lcom/miui/antispam/util/j;->Zo:I

    iget-object v2, p0, Lcom/miui/antispam/util/i;->Zn:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/antispam/util/i;->Zl:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/util/i;->Zn:Ljava/util/List;

    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/util/i;->Zm:I

    return v0
.end method

.method public move(I)Z
    .locals 1

    iget v0, p0, Lcom/miui/antispam/util/i;->Zm:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/antispam/util/i;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/util/i;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/util/i;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/antispam/util/i;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    iget v0, p0, Lcom/miui/antispam/util/i;->Zm:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/antispam/util/i;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/util/i;->Zn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/miui/antispam/util/i;->Zm:I

    iget-object v0, p0, Lcom/miui/antispam/util/i;->Zn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/util/j;

    iget v0, v0, Lcom/miui/antispam/util/j;->Zo:I

    iget-object v1, p0, Lcom/miui/antispam/util/i;->Zl:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antispam/util/i;->Zm:I

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/util/i;->Zn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/util/i;->Zn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/util/i;->Zm:I

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/util/i;->Zl:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    iget v0, p0, Lcom/miui/antispam/util/i;->Zm:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/antispam/util/i;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

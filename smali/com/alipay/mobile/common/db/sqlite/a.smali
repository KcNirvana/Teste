.class public final Lcom/alipay/mobile/common/db/sqlite/a;
.super Ljava/lang/Object;
.source "SqlInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/common/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/db/sqlite/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/common/a/e;

    iget-object v0, v0, Lcom/alipay/mobile/common/common/a/e;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/alipay/mobile/common/db/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/db/a/c;->a(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/a/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/db/a/b;->a()Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/db/sqlite/b;->a:[I

    invoke-virtual {v3}, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_2

    :pswitch_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_3
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_2

    :cond_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/alipay/mobile/common/common/a/e;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/db/sqlite/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/common/a/e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public b()[Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/common/a/e;

    iget-object v0, v0, Lcom/alipay/mobile/common/common/a/e;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/alipay/mobile/common/db/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_1
    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v2, v3

    :cond_2
    return-object v2
.end method

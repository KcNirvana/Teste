.class public final Lcom/alipay/mobile/common/db/c;
.super Ljava/lang/Object;
.source "DbModelSelector.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/common/db/sqlite/d;

.field private d:Lcom/alipay/mobile/common/db/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/db/d",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/alipay/mobile/common/db/d;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/db/d",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/db/c;->d:Lcom/alipay/mobile/common/db/d;

    iput-object p2, p0, Lcom/alipay/mobile/common/db/c;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/mobile/common/db/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->d:Lcom/alipay/mobile/common/db/d;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/d;->a()Lcom/alipay/mobile/common/db/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/b/e;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/db/c;->a(I)Lcom/alipay/mobile/common/db/c;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/b/e;->c()Lcom/alipay/mobile/common/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/db/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/a;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/alipay/mobile/common/db/a;->a(Landroid/database/Cursor;)Lcom/alipay/mobile/common/db/b/d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/alipay/mobile/common/ex/DbException;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/common/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public a(I)Lcom/alipay/mobile/common/db/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/db/c;->d:Lcom/alipay/mobile/common/db/d;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/db/d;->a(I)Lcom/alipay/mobile/common/db/d;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->a:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/common/db/c;->a:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, " FROM "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/db/c;->d:Lcom/alipay/mobile/common/db/d;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/db/d;->a()Lcom/alipay/mobile/common/db/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/db/b/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->d:Lcom/alipay/mobile/common/db/d;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/d;->b()Lcom/alipay/mobile/common/db/sqlite/d;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/sqlite/d;->a()I

    move-result v3

    if-lez v3, :cond_1

    const-string/jumbo v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/sqlite/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, " GROUP BY "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/db/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->c:Lcom/alipay/mobile/common/db/sqlite/d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->c:Lcom/alipay/mobile/common/db/sqlite/d;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/sqlite/d;->a()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v1, " HAVING "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/db/c;->c:Lcom/alipay/mobile/common/db/sqlite/d;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/db/sqlite/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->d:Lcom/alipay/mobile/common/db/d;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/d;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    const-string/jumbo v0, " ORDER BY "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/db/d$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/d$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/db/c;->d:Lcom/alipay/mobile/common/db/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/d;->d()I

    move-result v0

    if-lez v0, :cond_7

    const-string/jumbo v0, " LIMIT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->d:Lcom/alipay/mobile/common/db/d;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/d;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " OFFSET "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/db/c;->d:Lcom/alipay/mobile/common/db/d;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

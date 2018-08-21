.class public final Lcom/alipay/mobile/common/db/d;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/db/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/alipay/mobile/common/db/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/db/b/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/common/db/sqlite/d;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/db/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/db/b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/db/b/e",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/mobile/common/db/d;->d:I

    iput v0, p0, Lcom/alipay/mobile/common/db/d;->e:I

    iput-object p1, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    return-void
.end method

.method static a(Lcom/alipay/mobile/common/db/b/e;)Lcom/alipay/mobile/common/db/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/common/db/b/e",
            "<TT;>;)",
            "Lcom/alipay/mobile/common/db/d",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/mobile/common/db/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/db/d;-><init>(Lcom/alipay/mobile/common/db/b/e;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/alipay/mobile/common/db/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/common/db/b/e",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    return-object v0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/alipay/mobile/common/db/c;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/db/c;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/db/c;-><init>(Lcom/alipay/mobile/common/db/d;[Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)Lcom/alipay/mobile/common/db/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/alipay/mobile/common/db/d",
            "<TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/alipay/mobile/common/db/d;->d:I

    return-object p0
.end method

.method public a(Lcom/alipay/mobile/common/db/sqlite/d;)Lcom/alipay/mobile/common/db/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/db/sqlite/d;",
            ")",
            "Lcom/alipay/mobile/common/db/d",
            "<TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/common/db/d;->b:Lcom/alipay/mobile/common/db/sqlite/d;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/alipay/mobile/common/db/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/common/db/d",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/db/d;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->c:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/common/db/d$a;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/common/db/d$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/db/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alipay/mobile/common/db/d",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/db/sqlite/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/db/sqlite/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/db/d;->b:Lcom/alipay/mobile/common/db/sqlite/d;

    return-object p0
.end method

.method public b(I)Lcom/alipay/mobile/common/db/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/alipay/mobile/common/db/d",
            "<TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/alipay/mobile/common/db/d;->e:I

    return-object p0
.end method

.method public b()Lcom/alipay/mobile/common/db/sqlite/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->b:Lcom/alipay/mobile/common/db/sqlite/d;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/db/d$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/db/d;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/db/d;->e:I

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/b/e;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/db/d;->a(I)Lcom/alipay/mobile/common/db/d;

    iget-object v1, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/b/e;->c()Lcom/alipay/mobile/common/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/db/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/a;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/db/a;->a(Lcom/alipay/mobile/common/db/b/e;Landroid/database/Cursor;)Ljava/lang/Object;
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

.method public g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/b/e;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/db/b/e;->c()Lcom/alipay/mobile/common/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/db/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/a;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/db/a;->a(Lcom/alipay/mobile/common/db/b/e;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

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

    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public h()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/ex/DbException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/db/b/e;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "count(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/db/b/e;->g()Lcom/alipay/mobile/common/db/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/db/b/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\") as count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/db/d;->a([Ljava/lang/String;)Lcom/alipay/mobile/common/db/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/db/c;->a()Lcom/alipay/mobile/common/db/b/d;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "count"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/db/b/d;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "SELECT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " FROM "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/db/d;->a:Lcom/alipay/mobile/common/db/b/e;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/db/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->b:Lcom/alipay/mobile/common/db/sqlite/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->b:Lcom/alipay/mobile/common/db/sqlite/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/sqlite/d;->a()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/db/d;->b:Lcom/alipay/mobile/common/db/sqlite/d;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/db/sqlite/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, " ORDER BY "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/common/db/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/db/d$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/d$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/db/d;->d:I

    if-lez v0, :cond_3

    const-string/jumbo v0, " LIMIT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alipay/mobile/common/db/d;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " OFFSET "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alipay/mobile/common/db/d;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

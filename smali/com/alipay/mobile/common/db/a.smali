.class final Lcom/alipay/mobile/common/db/a;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method public static a(Landroid/database/Cursor;)Lcom/alipay/mobile/common/db/b/d;
    .locals 5

    new-instance v1, Lcom/alipay/mobile/common/db/b/d;

    invoke-direct {v1}, Lcom/alipay/mobile/common/db/b/d;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/db/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Lcom/alipay/mobile/common/db/b/e;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/common/db/b/e",
            "<TT;>;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/common/db/b/e;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/db/b/e;->h()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/db/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, p1, v1}, Lcom/alipay/mobile/common/db/b/a;->a(Ljava/lang/Object;Landroid/database/Cursor;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

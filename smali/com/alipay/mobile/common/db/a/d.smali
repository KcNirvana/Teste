.class public Lcom/alipay/mobile/common/db/a/d;
.super Ljava/lang/Object;
.source "DateColumnConverter.java"

# interfaces
.implements Lcom/alipay/mobile/common/db/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/common/db/a/b",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->INTEGER:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/db/a/d;->a(Ljava/util/Date;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Date;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;I)Ljava/util/Date;
    .locals 4

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public synthetic b(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/db/a/d;->a(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/alipay/mobile/common/db/a/f;
.super Ljava/lang/Object;
.source "LongColumnConverter.java"

# interfaces
.implements Lcom/alipay/mobile/common/db/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/common/db/a/b",
        "<",
        "Ljava/lang/Long;",
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

.method public a(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/db/a/f;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/db/a/f;->a(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

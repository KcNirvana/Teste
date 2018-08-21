.class final Lcom/alipay/mobile/common/config/b;
.super Ljava/lang/Object;
.source "DbConfigs.java"

# interfaces
.implements Lcom/alipay/mobile/common/a$b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/common/a;)V
    .locals 1

    invoke-interface {p1}, Lcom/alipay/mobile/common/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    return-void
.end method

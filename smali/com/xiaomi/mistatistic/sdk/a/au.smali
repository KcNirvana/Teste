.class Lcom/xiaomi/mistatistic/sdk/a/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/m$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/at;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/at;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/au;->a:Lcom/xiaomi/mistatistic/sdk/a/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/au;->a:Lcom/xiaomi/mistatistic/sdk/a/at;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/at;->a:Lcom/xiaomi/mistatistic/sdk/a/as;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/as;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/af;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/af;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/af;->a()V

    :cond_0
    return-void
.end method

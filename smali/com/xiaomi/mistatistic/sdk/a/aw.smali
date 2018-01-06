.class Lcom/xiaomi/mistatistic/sdk/a/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/m$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/as;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/as;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/aw;->a:Lcom/xiaomi/mistatistic/sdk/a/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v3, 0x4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/aw;->a:Lcom/xiaomi/mistatistic/sdk/a/as;

    const-string v2, "upload_policy"

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/ad;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;I)I

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/aw;->a:Lcom/xiaomi/mistatistic/sdk/a/as;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/aw;->a:Lcom/xiaomi/mistatistic/sdk/a/as;

    const-string v2, "upload_interval"

    const-wide/32 v4, 0x2bf20

    invoke-static {v0, v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/a/ad;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;J)J

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/aw;->a:Lcom/xiaomi/mistatistic/sdk/a/as;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;J)J

    goto :goto_0
.end method

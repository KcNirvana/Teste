.class Lcom/xiaomi/mistatistic/sdk/a/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/m$a;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/a/as;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/as;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->c:Lcom/xiaomi/mistatistic/sdk/a/as;

    iput p2, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->a:I

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->c:Lcom/xiaomi/mistatistic/sdk/a/as;

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;I)I

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->c:Lcom/xiaomi/mistatistic/sdk/a/as;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->c:Lcom/xiaomi/mistatistic/sdk/a/as;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->b:J

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;J)J

    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upload_policy"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->c:Lcom/xiaomi/mistatistic/sdk/a/as;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/ad;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->c:Lcom/xiaomi/mistatistic/sdk/a/as;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;)I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "upload_interval"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->c:Lcom/xiaomi/mistatistic/sdk/a/as;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/as;->b(Lcom/xiaomi/mistatistic/sdk/a/as;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/ad;->b(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/ay;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/ay;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ax;)V

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->c:Lcom/xiaomi/mistatistic/sdk/a/as;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/as;->b(Lcom/xiaomi/mistatistic/sdk/a/as;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ax;->c:Lcom/xiaomi/mistatistic/sdk/a/as;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;J)J

    goto :goto_0
.end method

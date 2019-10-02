.class Lcom/xiaomi/mistatistic/sdk/controller/u$3;
.super Ljava/lang/Object;
.source "UploadPolicyEngine.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/u;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/u;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/u;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/u;

    iput p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->a:I

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    const-string v0, "UPE"

    const-string v1, "Set new policy, policy: %d, value: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/u;

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a(Lcom/xiaomi/mistatistic/sdk/controller/u;I)I

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upload_policy"

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->a:I

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/u;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/u;->h(Lcom/xiaomi/mistatistic/sdk/controller/u;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/u;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->b:J

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a(Lcom/xiaomi/mistatistic/sdk/controller/u;J)J

    const-string v1, "upload_interval"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/u;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/u;->i(Lcom/xiaomi/mistatistic/sdk/controller/u;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/u;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/u;->j(Lcom/xiaomi/mistatistic/sdk/controller/u;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/u;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/u;->h(Lcom/xiaomi/mistatistic/sdk/controller/u;)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/u;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->b:J

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/u;->b(Lcom/xiaomi/mistatistic/sdk/controller/u;J)J

    const-string v1, "upload_size"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/u;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/u;->k(Lcom/xiaomi/mistatistic/sdk/controller/u;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/u$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/u;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/u;->n(Lcom/xiaomi/mistatistic/sdk/controller/u;)V

    :cond_1
    :goto_0
    return-void
.end method

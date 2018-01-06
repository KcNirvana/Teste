.class Lcom/xiaomi/mistatistic/sdk/a/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/a/c$a;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/a/af;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/af;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/ah;->c:Lcom/xiaomi/mistatistic/sdk/a/af;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/a/ah;->a:J

    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/a/ah;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ah;->c:Lcom/xiaomi/mistatistic/sdk/a/af;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ah;->a:J

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/ah;->b:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/a/af;->a(Lcom/xiaomi/mistatistic/sdk/a/af;JJ)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/af;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "RDUM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload failed, set Uploading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/af;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/xiaomi/push/ak;
.super Lcom/xiaomi/push/ai$b;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/ai;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/ai;Lcom/xiaomi/push/ai$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/ak;->a:Lcom/xiaomi/push/ai;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/ai$b;-><init>(Lcom/xiaomi/push/ai$a;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/ak;->a:Lcom/xiaomi/push/ai;

    invoke-static {v0}, Lcom/xiaomi/push/ai;->a(Lcom/xiaomi/push/ai;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/ak;->a:Lcom/xiaomi/push/ai;

    invoke-static {v1}, Lcom/xiaomi/push/ai;->a(Lcom/xiaomi/push/ai;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/ak;->a:Lcom/xiaomi/push/ai$a;

    invoke-virtual {v2}, Lcom/xiaomi/push/ai$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

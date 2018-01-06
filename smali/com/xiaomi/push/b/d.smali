.class Lcom/xiaomi/push/b/d;
.super Lcom/xiaomi/b/a/d/k$b;
.source "SourceFile"


# instance fields
.field a:Lcom/xiaomi/b/a/d/k$b;

.field final synthetic b:Lcom/xiaomi/push/b/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/b/d;->b:Lcom/xiaomi/push/b/b;

    invoke-direct {p0}, Lcom/xiaomi/b/a/d/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/b/d;->b:Lcom/xiaomi/push/b/b;

    invoke-static {v0}, Lcom/xiaomi/push/b/b;->b(Lcom/xiaomi/push/b/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/b/b$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/b/b$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/b/d;->b:Lcom/xiaomi/push/b/b;

    invoke-static {v0}, Lcom/xiaomi/push/b/b;->b(Lcom/xiaomi/push/b/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/a/d/k$b;

    iput-object v0, p0, Lcom/xiaomi/push/b/d;->a:Lcom/xiaomi/b/a/d/k$b;

    iget-object v0, p0, Lcom/xiaomi/push/b/d;->a:Lcom/xiaomi/b/a/d/k$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/b/d;->a:Lcom/xiaomi/b/a/d/k$b;

    invoke-virtual {v0}, Lcom/xiaomi/b/a/d/k$b;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/b/d;->a:Lcom/xiaomi/b/a/d/k$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/b/d;->a:Lcom/xiaomi/b/a/d/k$b;

    invoke-virtual {v0}, Lcom/xiaomi/b/a/d/k$b;->c()V

    :cond_0
    return-void
.end method

.class Lcom/xiaomi/stat/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/c/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/c/i;->a:Lcom/xiaomi/stat/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/stat/c/i;->a:Lcom/xiaomi/stat/c/h;

    iget-object v2, v2, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-static {v2}, Lcom/xiaomi/stat/c/g;->a(Lcom/xiaomi/stat/c/g;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/xiaomi/stat/c/i;->a:Lcom/xiaomi/stat/c/h;

    iget-object v2, v2, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-static {v2}, Lcom/xiaomi/stat/c/g;->b(Lcom/xiaomi/stat/c/g;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->a:Lcom/xiaomi/stat/c/h;

    iget-object v1, v1, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-static {v1}, Lcom/xiaomi/stat/c/g;->c(Lcom/xiaomi/stat/c/g;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->a:Lcom/xiaomi/stat/c/h;

    iget-object v0, v0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/g;->b()V

    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->a:Lcom/xiaomi/stat/c/h;

    iget-object v0, v0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/stat/c/g;->a(Lcom/xiaomi/stat/c/g;J)J

    :cond_1
    return-void
.end method

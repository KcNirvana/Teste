.class Lcom/xiaomi/miglobaladsdk/a/b$5$1;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/b$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/a/f;

.field final synthetic b:Lcom/xiaomi/miglobaladsdk/a/b$5;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/b$5;Lcom/xiaomi/miglobaladsdk/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b$5$1;->b:Lcom/xiaomi/miglobaladsdk/a/b$5;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/a/b$5$1;->a:Lcom/xiaomi/miglobaladsdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$5$1;->a:Lcom/xiaomi/miglobaladsdk/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$5$1;->b:Lcom/xiaomi/miglobaladsdk/a/b$5;

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/a/b$5;->b:Lcom/xiaomi/miglobaladsdk/a/b;

    new-instance v1, Lcom/xiaomi/miglobaladsdk/a/e;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/a/b$5$1;->a:Lcom/xiaomi/miglobaladsdk/a/f;

    invoke-virtual {v2}, Lcom/xiaomi/miglobaladsdk/a/f;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/a/b$5$1;->a:Lcom/xiaomi/miglobaladsdk/a/f;

    invoke-virtual {v3}, Lcom/xiaomi/miglobaladsdk/a/f;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/miglobaladsdk/a/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Lcom/xiaomi/miglobaladsdk/a/b;Lcom/xiaomi/miglobaladsdk/a/e;)Lcom/xiaomi/miglobaladsdk/a/e;

    :cond_0
    return-void
.end method

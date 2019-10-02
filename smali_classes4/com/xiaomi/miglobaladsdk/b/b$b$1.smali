.class Lcom/xiaomi/miglobaladsdk/b/b$b$1;
.super Ljava/lang/Object;
.source "NativeAdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/b/b$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/b/b$b;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/b/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b$b$1;->a:Lcom/xiaomi/miglobaladsdk/b/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b$b$1;->a:Lcom/xiaomi/miglobaladsdk/b/b$b;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/b/b$b;->a(Lcom/xiaomi/miglobaladsdk/b/b$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "NativeAdLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b$b$1;->a:Lcom/xiaomi/miglobaladsdk/b/b$b;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/b/b$b;->a(Lcom/xiaomi/miglobaladsdk/b/b$b;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/miglobaladsdk/b/b;

    invoke-virtual {v2}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " no callback timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b$b$1;->a:Lcom/xiaomi/miglobaladsdk/b/b$b;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/b/b$b;->a(Lcom/xiaomi/miglobaladsdk/b/b$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Lcom/xiaomi/miglobaladsdk/b/b;I)I

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b$b$1;->a:Lcom/xiaomi/miglobaladsdk/b/b$b;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/b/b$b;->a(Lcom/xiaomi/miglobaladsdk/b/b$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/b/b;

    const-string v1, "8 timeout"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/xiaomi/miglobaladsdk/b/b;->onAdapterFailed(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class Lcom/xiaomi/miglobaladsdk/a/a/f$1;
.super Ljava/lang/Object;
.source "MiConfigLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/a/a/c;

.field final synthetic b:Lcom/xiaomi/miglobaladsdk/a/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/a/f;Lcom/xiaomi/miglobaladsdk/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$1;->b:Lcom/xiaomi/miglobaladsdk/a/a/f;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$1;->a:Lcom/xiaomi/miglobaladsdk/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "asyncLoadConfig"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$1;->b:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/f;)Lcom/xiaomi/miglobaladsdk/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/a/a/a;->a()Lcom/xiaomi/miglobaladsdk/a/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$1;->b:Lcom/xiaomi/miglobaladsdk/a/a/f;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$1;->a:Lcom/xiaomi/miglobaladsdk/a/a/c;

    invoke-static {v1, v2, v0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/f;Lcom/xiaomi/miglobaladsdk/a/a/c;Lcom/xiaomi/miglobaladsdk/a/a/e;)V

    return-void
.end method

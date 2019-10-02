.class Lcom/xiaomi/miglobaladsdk/a/a/f$3;
.super Ljava/lang/Object;
.source "MiConfigLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/a/f;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/a/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$3;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "start to request url"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$3;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->d(Lcom/xiaomi/miglobaladsdk/a/a/f;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://globalapi.ad.xiaomi.com/filter/text?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$3;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {v2, v0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/f;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/miglobaladsdk/a/a/f$3$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/miglobaladsdk/a/a/f$3$1;-><init>(Lcom/xiaomi/miglobaladsdk/a/a/f$3;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/xiaomi/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/utils/g$b;)Lcom/xiaomi/utils/g$c;

    return-void
.end method

.class Lcom/xiaomi/miglobaladsdk/nativead/c$5;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/nativead/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/nativead/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$5;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$5;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->g(Lcom/xiaomi/miglobaladsdk/nativead/c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$5;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->h(Lcom/xiaomi/miglobaladsdk/nativead/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$5;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->i(Lcom/xiaomi/miglobaladsdk/nativead/c;)Z

    goto :goto_0

    :cond_0
    const-string v0, "NativeAdManagerInternal"

    const-string v1, "optimized skip issueNext"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

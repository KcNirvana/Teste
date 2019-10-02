.class Lcom/xiaomi/miglobaladsdk/nativead/c$6;
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

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$6;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bidding->wait time out for bidding,mIsBid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$6;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->j(Lcom/xiaomi/miglobaladsdk/nativead/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$6;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(Lcom/xiaomi/miglobaladsdk/nativead/c;Z)Z

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$6;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/String;)V

    return-void
.end method

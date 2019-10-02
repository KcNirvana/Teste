.class Lcom/xiaomi/miglobaladsdk/a/a/f$a;
.super Landroid/content/BroadcastReceiver;
.source "MiConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/a/a/f;


# direct methods
.method private constructor <init>(Lcom/xiaomi/miglobaladsdk/a/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$a;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/miglobaladsdk/a/a/f;Lcom/xiaomi/miglobaladsdk/a/a/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/f$a;-><init>(Lcom/xiaomi/miglobaladsdk/a/a/f;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "MiAdBlacklistConfig"

    const-string p2, "MiConfigLoader network status change"

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$a;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->b()V

    return-void
.end method

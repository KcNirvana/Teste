.class Lcom/xiaomi/utils/a$1;
.super Ljava/lang/Object;
.source "AdsBlocker.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/utils/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/utils/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/utils/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/utils/a$1;->a:Lcom/xiaomi/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const-string p1, "MiAdBlacklistConfig"

    const-string v0, "AdSdkBlocker onLoadFailed"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/a/a/e;)V
    .locals 2

    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "AdSdkBlocker onLoadSuccess"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "AdSdkBlocker onLoadSuccess 1"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/a/a/e;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/utils/a$1$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/utils/a$1$1;-><init>(Lcom/xiaomi/utils/a$1;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/utils/b;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

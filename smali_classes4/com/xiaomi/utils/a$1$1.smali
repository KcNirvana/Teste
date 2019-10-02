.class Lcom/xiaomi/utils/a$1$1;
.super Ljava/lang/Object;
.source "AdsBlocker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/utils/a$1;->a(Lcom/xiaomi/miglobaladsdk/a/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/utils/a$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/utils/a$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/utils/a$1$1;->b:Lcom/xiaomi/utils/a$1;

    iput-object p2, p0, Lcom/xiaomi/utils/a$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/a/b;

    invoke-direct {v0}, Lcom/xiaomi/miglobaladsdk/a/a/b;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/utils/a$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/a/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "MiAdBlacklistConfig"

    const-string v2, "AdSdkBlocker onParseSuccess"

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/utils/a$1$1;->b:Lcom/xiaomi/utils/a$1;

    iget-object v2, v2, Lcom/xiaomi/utils/a$1;->a:Lcom/xiaomi/utils/a;

    invoke-static {v2}, Lcom/xiaomi/utils/a;->a(Lcom/xiaomi/utils/a;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

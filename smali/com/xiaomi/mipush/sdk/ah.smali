.class public Lcom/xiaomi/mipush/sdk/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/ah$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "context is null, MiTinyDataClient.init(Context, String) failed."

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mipush/sdk/ah$a;->a()Lcom/xiaomi/mipush/sdk/ah$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mipush/sdk/ah$a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "channel is null or empty, MiTinyDataClient.init(Context, String) failed."

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mipush/sdk/ah$a;->a()Lcom/xiaomi/mipush/sdk/ah$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/ah$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/j/a/f;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiTinyDataClient.upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/ah$a;->a()Lcom/xiaomi/mipush/sdk/ah$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/ah$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/ah$a;->a()Lcom/xiaomi/mipush/sdk/ah$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mipush/sdk/ah$a;->a(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/mipush/sdk/ah$a;->a()Lcom/xiaomi/mipush/sdk/ah$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/ah$a;->a(Lcom/xiaomi/j/a/f;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/xiaomi/j/a/f;

    invoke-direct {v0}, Lcom/xiaomi/j/a/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/f;->d(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    invoke-virtual {v0, p2}, Lcom/xiaomi/j/a/f;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    invoke-virtual {v0, p3, p4}, Lcom/xiaomi/j/a/f;->a(J)Lcom/xiaomi/j/a/f;

    invoke-virtual {v0, p5}, Lcom/xiaomi/j/a/f;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/f;->c(Z)Lcom/xiaomi/j/a/f;

    const-string v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/f;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/ah;->a(Landroid/content/Context;Lcom/xiaomi/j/a/f;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/xiaomi/j/a/f;

    invoke-direct {v0}, Lcom/xiaomi/j/a/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/j/a/f;->d(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/f;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    invoke-virtual {v0, p2, p3}, Lcom/xiaomi/j/a/f;->a(J)Lcom/xiaomi/j/a/f;

    invoke-virtual {v0, p4}, Lcom/xiaomi/j/a/f;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/ah$a;->a()Lcom/xiaomi/mipush/sdk/ah$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/ah$a;->a(Lcom/xiaomi/j/a/f;)Z

    move-result v0

    return v0
.end method

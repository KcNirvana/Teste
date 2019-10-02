.class Lcom/xiaomi/miglobaladsdk/nativead/c$4;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/nativead/c;->onAdDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaomi/miglobaladsdk/nativead/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/c;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    iput p3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(Lcom/xiaomi/miglobaladsdk/nativead/c;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(Lcom/xiaomi/miglobaladsdk/nativead/c;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    iget v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->b:I

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;->adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/nativead/c;Z)Z

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/nativead/c;J)J

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Lcom/xiaomi/miglobaladsdk/nativead/c;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsDisliked"

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->d(Lcom/xiaomi/miglobaladsdk/nativead/c;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Lcom/xiaomi/miglobaladsdk/nativead/c;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "XoutStartTime"

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->f(Lcom/xiaomi/miglobaladsdk/nativead/c;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Lcom/xiaomi/miglobaladsdk/nativead/c;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xout onAdDisliked mIsDisliked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(Lcom/xiaomi/miglobaladsdk/nativead/c;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "IsDisliked"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mXoutStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(Lcom/xiaomi/miglobaladsdk/nativead/c;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "XoutStartTime"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

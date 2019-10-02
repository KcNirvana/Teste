.class Lcom/xiaomi/miglobaladsdk/nativead/c$8;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/nativead/c;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/xiaomi/miglobaladsdk/nativead/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/c;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    iput-boolean p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->a:Z

    iput p3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(Lcom/xiaomi/miglobaladsdk/nativead/c;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(Lcom/xiaomi/miglobaladsdk/nativead/c;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdListManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(Lcom/xiaomi/miglobaladsdk/nativead/c;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdListManagerListener;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->k(Lcom/xiaomi/miglobaladsdk/nativead/c;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdListManagerListener;->adLoaded(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(Lcom/xiaomi/miglobaladsdk/nativead/c;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;->adLoaded()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->c:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(Lcom/xiaomi/miglobaladsdk/nativead/c;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;->b:I

    invoke-interface {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;->adFailedToLoad(I)V

    :cond_2
    :goto_0
    return-void
.end method

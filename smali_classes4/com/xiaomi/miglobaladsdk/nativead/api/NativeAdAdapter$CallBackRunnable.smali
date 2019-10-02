.class Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;
.super Ljava/lang/Object;
.source "NativeAdAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallBackRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->c:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    iput-object p4, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->b(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "key_load_ads"

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->b(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;->onAdapterLoaded(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string v0, "key_load_ad"

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->b(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->c:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;->onAdapterLoaded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    goto :goto_0

    :cond_1
    const-string v0, "key_failed"

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->b(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$CallBackRunnable;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;->onAdapterFailed(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

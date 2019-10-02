.class Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;
.super Lcom/xiaomi/utils/k;
.source "NativeAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->notifyNativeAdLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    iput-object p4, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->a:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/utils/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    const-string v3, "key_load_ads"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->a:Ljava/util/List;

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    const/16 v2, 0x271b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-static {v3}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/utils/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/utils/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->notifyNativeAdFailed(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$2;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method

.class Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;
.super Lcom/xiaomi/utils/k;
.source "NativeAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->notifyNativeAdLoaded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

.field final synthetic b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    iput-object p4, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/utils/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 12

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/utils/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-virtual {v0, v1}, Lcom/xiaomi/utils/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-static {v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->b(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;

    move-result-object v1

    const/16 v2, 0x271b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-static {v3}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)Lcom/xiaomi/utils/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/utils/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;->onAdapterFailed(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    const-string v6, "key_load_ad"

    iget-object v7, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobNativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;


# direct methods
.method constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 3

    const-string v0, "AdmobNativeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADMOB: errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;

    iget-object v0, v0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;->access$000(Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd$1;->this$1:Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->notifyNativeAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

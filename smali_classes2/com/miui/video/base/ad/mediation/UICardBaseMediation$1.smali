.class Lcom/miui/video/base/ad/mediation/UICardBaseMediation$1;
.super Ljava/lang/Object;
.source "UICardBaseMediation.java"

# interfaces
.implements Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/ad/mediation/UICardBaseMediation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/ad/mediation/UICardBaseMediation;


# direct methods
.method constructor <init>(Lcom/miui/video/base/ad/mediation/UICardBaseMediation;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation$1;->this$0:Lcom/miui/video/base/ad/mediation/UICardBaseMediation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 0

    return-void
.end method

.method public adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    return-void
.end method

.method public adLoaded(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation$1;->this$0:Lcom/miui/video/base/ad/mediation/UICardBaseMediation;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->isMinePlaceId(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "UICardBaseMediation"

    const-string v0, "adLoaded but not mine: ignore"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation$1;->this$0:Lcom/miui/video/base/ad/mediation/UICardBaseMediation;

    invoke-virtual {p1}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->getCurNativeAd()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "UICardBaseMediation"

    const-string v0, "adLoaded and is mine and curNativeAd == null"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/UICardBaseMediation$1;->this$0:Lcom/miui/video/base/ad/mediation/UICardBaseMediation;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/UICardBaseMediation;->access$000(Lcom/miui/video/base/ad/mediation/UICardBaseMediation;)Z

    goto :goto_0

    :cond_1
    const-string p1, "UICardBaseMediation"

    const-string v0, "adLoaded and is mine But ad already get"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.class Lcom/miui/video/base/ad/mediation/entity/MediationEntity$1;
.super Ljava/lang/Object;
.source "MediationEntity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->loadAd(Landroid/content/Context;Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;


# direct methods
.method constructor <init>(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$1;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$1;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->access$000(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$1;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->access$000(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager;->loadAd()V

    :cond_0
    return-void
.end method

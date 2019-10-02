.class Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;
.super Ljava/lang/Object;
.source "MediationEntity.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->ensureAdManager(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

.field final synthetic val$listenerRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    iput-object p2, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->val$listenerRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 2

    const-string p1, "MediationEntity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adClicked tagId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    iget-object v1, v1, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/utils/MediationLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/utils/ReportUtils;->reportClick(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)V

    return-void
.end method

.method public adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 1

    const-string p1, "MediationEntity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adDisliked  tagId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    iget-object v0, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/base/ad/mediation/utils/MediationLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 3

    const-string v0, "MediationEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adFailedToLoad code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tagId = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    iget-object p1, p1, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/base/ad/mediation/utils/MediationLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 2

    const-string p1, "MediationEntity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adImpression tagId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    iget-object v1, v1, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/utils/MediationLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/utils/ReportUtils;->reportImpression(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)V

    return-void
.end method

.method public adLoaded()V
    .locals 3

    const-string v0, "MediationEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adLoaded tagId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    iget-object v2, v2, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/base/ad/mediation/utils/MediationLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->val$listenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->val$listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$2;->this$0:Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    iget-object v1, v1, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity$OnSelfLoadListener;->adLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

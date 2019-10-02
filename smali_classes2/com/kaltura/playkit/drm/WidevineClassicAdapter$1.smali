.class Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;
.super Ljava/lang/Object;
.source "WidevineClassicAdapter.java"

# interfaces
.implements Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/drm/WidevineClassicAdapter;

.field final synthetic val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

.field final synthetic val$localAssetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/drm/WidevineClassicAdapter;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;->this$0:Lcom/kaltura/playkit/drm/WidevineClassicAdapter;

    iput-object p2, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

    iput-object p3, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;->val$localAssetPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmErrorEvent;)V
    .locals 5

    invoke-static {}, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

    iget-object v1, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;->val$localAssetPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "License acquisition failed; DRM client error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;->onFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onEvent(Landroid/drm/DrmEvent;)V
    .locals 2

    invoke-static {}, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/drm/DrmEvent;->getType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;->val$localAssetPath:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;->onRegistered(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

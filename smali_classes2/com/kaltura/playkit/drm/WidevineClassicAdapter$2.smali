.class Lcom/kaltura/playkit/drm/WidevineClassicAdapter$2;
.super Ljava/lang/Object;
.source "WidevineClassicAdapter.java"

# interfaces
.implements Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->unregisterAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/drm/WidevineClassicAdapter;

.field final synthetic val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;

.field final synthetic val$localAssetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/drm/WidevineClassicAdapter;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$2;->this$0:Lcom/kaltura/playkit/drm/WidevineClassicAdapter;

    iput-object p2, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$2;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;

    iput-object p3, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$2;->val$localAssetPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmErrorEvent;)V
    .locals 1

    invoke-static {}, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

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

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$2;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$2;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$2;->val$localAssetPath:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;->onRemoved(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

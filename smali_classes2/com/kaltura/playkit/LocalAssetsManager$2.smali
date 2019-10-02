.class Lcom/kaltura/playkit/LocalAssetsManager$2;
.super Ljava/lang/Object;
.source "LocalAssetsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/LocalAssetsManager;->unregisterAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/LocalAssetsManager;

.field final synthetic val$assetId:Ljava/lang/String;

.field final synthetic val$drmAdapter:Lcom/kaltura/playkit/drm/DrmAdapter;

.field final synthetic val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;

.field final synthetic val$localAssetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/LocalAssetsManager;Lcom/kaltura/playkit/drm/DrmAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/LocalAssetsManager$2;->this$0:Lcom/kaltura/playkit/LocalAssetsManager;

    iput-object p2, p0, Lcom/kaltura/playkit/LocalAssetsManager$2;->val$drmAdapter:Lcom/kaltura/playkit/drm/DrmAdapter;

    iput-object p3, p0, Lcom/kaltura/playkit/LocalAssetsManager$2;->val$localAssetPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/kaltura/playkit/LocalAssetsManager$2;->val$assetId:Ljava/lang/String;

    iput-object p5, p0, Lcom/kaltura/playkit/LocalAssetsManager$2;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager$2;->val$drmAdapter:Lcom/kaltura/playkit/drm/DrmAdapter;

    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager$2;->val$localAssetPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/kaltura/playkit/LocalAssetsManager$2;->val$assetId:Ljava/lang/String;

    new-instance v3, Lcom/kaltura/playkit/LocalAssetsManager$2$1;

    invoke-direct {v3, p0}, Lcom/kaltura/playkit/LocalAssetsManager$2$1;-><init>(Lcom/kaltura/playkit/LocalAssetsManager$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kaltura/playkit/drm/DrmAdapter;->unregisterAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)Z

    return-void
.end method

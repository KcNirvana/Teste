.class Lcom/kaltura/playkit/drm/DrmAdapter$NullDrmAdapter;
.super Lcom/kaltura/playkit/drm/DrmAdapter;
.source "DrmAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/drm/DrmAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullDrmAdapter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/drm/DrmAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaltura/playkit/drm/DrmAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/drm/DrmAdapter$NullDrmAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAssetStatus(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;)Z
    .locals 7

    if-eqz p3, :cond_0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;->onStatus(Ljava/lang/String;JJZ)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public refreshAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kaltura/playkit/drm/DrmAdapter$NullDrmAdapter;->registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z

    move-result p1

    return p1
.end method

.method public registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z
    .locals 0

    if-eqz p4, :cond_0

    invoke-interface {p4, p1}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;->onRegistered(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)Z
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;->onRemoved(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

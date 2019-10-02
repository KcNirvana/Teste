.class Lcom/kaltura/playkit/drm/WidevineClassicAdapter;
.super Lcom/kaltura/playkit/drm/DrmAdapter;
.source "WidevineClassicAdapter.java"


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WidevineClassicAdapter"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/drm/DrmAdapter;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method


# virtual methods
.method public checkAssetStatus(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;)Z
    .locals 8

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->getRightsInfo(Ljava/lang/String;)Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;

    move-result-object p2

    if-eqz p3, :cond_0

    iget v0, p2, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;->expiryTime:I

    int-to-long v3, v0

    iget p2, p2, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;->availableTime:I

    int-to-long v5, p2

    const/4 v7, 0x1

    move-object v1, p3

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;->onStatus(Ljava/lang/String;JJZ)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public refreshAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z

    move-result p1

    return p1
.end method

.method public registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z
    .locals 1

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;

    invoke-direct {v0, p0, p4, p1}, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$1;-><init>(Lcom/kaltura/playkit/drm/WidevineClassicAdapter;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->setEventListener(Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;)V

    invoke-virtual {p2, p1, p3}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->acquireLocalAssetRights(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)Z
    .locals 1

    new-instance p2, Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/kaltura/playkit/drm/WidevineClassicAdapter$2;-><init>(Lcom/kaltura/playkit/drm/WidevineClassicAdapter;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->setEventListener(Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;)V

    invoke-virtual {p2, p1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->removeRights(Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

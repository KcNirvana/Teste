.class public abstract Lcom/kaltura/playkit/drm/DrmAdapter;
.super Ljava/lang/Object;
.source "DrmAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/drm/DrmAdapter$NullDrmAdapter;
    }
.end annotation


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DrmAdapter"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/drm/DrmAdapter;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrmAdapter(Lcom/kaltura/playkit/PKDrmParams$Scheme;Landroid/content/Context;Lcom/kaltura/playkit/LocalDataStore;)Lcom/kaltura/playkit/drm/DrmAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Lcom/kaltura/playkit/drm/DrmAdapter$NullDrmAdapter;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/drm/DrmAdapter$NullDrmAdapter;-><init>(Lcom/kaltura/playkit/drm/DrmAdapter$1;)V

    return-object p0

    :cond_0
    sget-object v1, Lcom/kaltura/playkit/drm/DrmAdapter$1;->$SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I

    invoke-virtual {p0}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/kaltura/playkit/drm/DrmAdapter;->log:Lcom/kaltura/playkit/PKLog;

    const-string p1, "Unsupported scheme PlayReady"

    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/drm/WidevineClassicAdapter;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/kaltura/playkit/drm/WidevineModularAdapter;

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/drm/WidevineModularAdapter;-><init>(Landroid/content/Context;Lcom/kaltura/playkit/LocalDataStore;)V

    return-object p0

    :goto_0
    new-instance p0, Lcom/kaltura/playkit/drm/DrmAdapter$NullDrmAdapter;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/drm/DrmAdapter$NullDrmAdapter;-><init>(Lcom/kaltura/playkit/drm/DrmAdapter$1;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract checkAssetStatus(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;)Z
.end method

.method public abstract refreshAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z
.end method

.method public abstract registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unregisterAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)Z
.end method

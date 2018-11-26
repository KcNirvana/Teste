.class public Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultCameraModel;
.super Lcom/miui/securityscan/model/manualitem/DefaultAppModel;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "default_camera"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultCameraModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method protected initModel()V
    .locals 2

    const-string/jumbo v0, "com.android.camera"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultCameraModel;->setDefaultPkgName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultCameraModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070766

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultCameraModel;->setTypeName(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultCameraModel;->setIntentFilter(Landroid/content/IntentFilter;)V

    return-void
.end method

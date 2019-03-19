.class public Lcom/android/camera/data/data/config/ComponentManuallyISO;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyISO.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const/4 v9, -0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedContinousIsoMode()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x90b0032

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getIds(I)[I

    move-result-object v0

    const v5, 0x90b0033

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getStrings(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, v0

    :goto_1
    if-ge v5, v6, :cond_1

    aget v3, v0, v5

    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    aget-object v8, v1, v2

    invoke-direct {v7, v9, v9, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const v5, 0x90b0030

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getIds(I)[I

    move-result-object v0

    const v5, 0x90b0031

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getStrings(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v4
.end method


# virtual methods
.method protected checkValueValid(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedContinousIsoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x90b0033

    invoke-static {p1, v0}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x90b0031

    invoke-static {p1, v0}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    const v0, 0x90f00ee

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x90f00dc

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyISO;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyISO;->mItems:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyISO;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_qc_camera_iso_key"

    return-object v0
.end method

.method protected resetComponentValue(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

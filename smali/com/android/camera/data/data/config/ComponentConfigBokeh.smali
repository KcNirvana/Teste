.class public Lcom/android/camera/data/data/config/ComponentConfigBokeh;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigBokeh.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private static createItems(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const v5, 0x902013a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v3, "off"

    const v4, 0x90f0070

    invoke-direct {v2, v5, v5, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const-string/jumbo v3, "on"

    const v4, 0x90f006f

    invoke-direct {v2, v5, v5, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "off"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x90f0188

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

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_camera_bokeh_key"

    return-object v0
.end method

.method reInit(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->createItems(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->mItems:Ljava/util/List;

    return-void
.end method

.method public toggle(I)V
    .locals 2

    const-string/jumbo v0, "on"

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "off"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->setComponentValue(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "on"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/sdu/didi/openapi/location/LocationManage;
.super Ljava/lang/Object;


# instance fields
.field private sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findRealType()V
    .locals 1

    const-string/jumbo v0, "com.amap.api.location.AMapLocationClient"

    invoke-direct {p0, v0}, Lcom/sdu/didi/openapi/location/LocationManage;->findSdk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->GAODE:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V

    :cond_0
    const-string/jumbo v0, "com.baidu.location.LocationClient"

    invoke-direct {p0, v0}, Lcom/sdu/didi/openapi/location/LocationManage;->findSdk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->BAIDU:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V

    :cond_1
    const-string/jumbo v0, "com.tencent.map.geolocation.TencentLocationManager"

    invoke-direct {p0, v0}, Lcom/sdu/didi/openapi/location/LocationManage;->findSdk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->SOSO:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V

    :cond_2
    return-void
.end method

.method private findSdk(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->getMapSdkType()Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    move-result-object v0

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->SYSTEM:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sdu/didi/openapi/location/LocationManage;->findRealType()V

    :cond_0
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationManage$1;->$SwitchMap$com$sdu$didi$openapi$DIOpenSDK$MapLocationType:[I

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->getMapSdkType()Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/sdu/didi/openapi/location/SystemSDK;

    invoke-direct {v0, p1}, Lcom/sdu/didi/openapi/location/SystemSDK;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/sdu/didi/openapi/location/GaodeSdk;

    invoke-direct {v0, p1}, Lcom/sdu/didi/openapi/location/GaodeSdk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/sdu/didi/openapi/location/BaiduSdk;

    invoke-direct {v0, p1}, Lcom/sdu/didi/openapi/location/BaiduSdk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sdu/didi/openapi/location/SosoSdk;

    invoke-direct {v0, p1}, Lcom/sdu/didi/openapi/location/SosoSdk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected registListener(Landroid/os/Looper;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    invoke-virtual {v0, p1, p2}, Lcom/sdu/didi/openapi/location/SdkHub;->registListener(Landroid/os/Looper;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V

    return-void
.end method

.method protected unRegistListener()V
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/SdkHub;->unRegistListener()V

    :cond_0
    return-void
.end method

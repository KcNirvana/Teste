.class public Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "DevicesPopup.java"


# instance fields
.field private mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

.field private mDevicesAdapter:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;

.field private mMilinkDeviceListener:Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private vContentListView:Landroid/widget/ListView;

.field private vRoot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/player/service/presenter/AirkanPresenter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$3;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mMilinkDeviceListener:Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->init()V

    invoke-super {p0, p2}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getAirkanManager()Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    :cond_0
    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mDevicesAdapter:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->initDevices()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->vContentListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mDevicesAdapter:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->vContentListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mDevicesAdapter:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->createDeviceList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private createDeviceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->queryAirkanDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/player/service/R$string;->lv_airkan_device_xiaomi_phone:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$string;->lv_device_list_seaching:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_popup_airkan:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->vRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->vRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_content:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->vContentListView:Landroid/widget/ListView;

    return-void
.end method

.method private initDevices()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mMilinkDeviceListener:Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->registeOnDeviceChangeListener(Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->createDeviceList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mDevicesAdapter:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->setGroup(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mDevicesAdapter:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->setPlayingDeviceName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->openDeviceManager()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->mMilinkDeviceListener:Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->unregisteOnDeviceChangeListener(Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->initDevices()V

    return-void
.end method

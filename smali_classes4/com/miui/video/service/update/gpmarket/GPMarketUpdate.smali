.class public Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;
.super Lcom/miui/video/service/update/IAppUpdateMarket;
.source "GPMarketUpdate.java"


# instance fields
.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/update/IAppUpdateMarket;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;)Lcom/xiaomi/market/sdk/XiaomiUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;Lcom/xiaomi/market/sdk/XiaomiUpdateListener;Lcom/miui/video/service/update/entity/UpdateEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->onCheckUpdateFinish(Lcom/xiaomi/market/sdk/XiaomiUpdateListener;Lcom/miui/video/service/update/entity/UpdateEntity;)V

    return-void
.end method

.method private onCheckUpdateFinish(Lcom/xiaomi/market/sdk/XiaomiUpdateListener;Lcom/miui/video/service/update/entity/UpdateEntity;)V
    .locals 4

    new-instance v0, Lcom/xiaomi/market/sdk/UpdateResponse;

    invoke-direct {v0}, Lcom/xiaomi/market/sdk/UpdateResponse;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/video/service/update/entity/UpdateEntity;->getStatus()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/service/update/entity/UpdateEntity;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->updateLog:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p2}, Lcom/miui/video/service/update/entity/UpdateEntity;->getApp_ver()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput v3, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionCode:I

    :goto_0
    invoke-virtual {p2}, Lcom/miui/video/service/update/entity/UpdateEntity;->getApp_name()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionName:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, v1, v0}, Lcom/xiaomi/market/sdk/XiaomiUpdateListener;->onUpdateReturned(ILcom/xiaomi/market/sdk/UpdateResponse;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public cancelUpdate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public setUpdateListener(Lcom/xiaomi/market/sdk/XiaomiUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->mListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    return-void
.end method

.method public startCheckVersion(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;->release()V

    const-class p1, Lcom/miui/video/service/update/gpmarket/GPUpdateApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/service/update/gpmarket/GPUpdateApi;

    invoke-interface {p1}, Lcom/miui/video/service/update/gpmarket/GPUpdateApi;->checkGPUpdate()Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/service/update/gpmarket/-$$Lambda$UHnCwDrrspLvXBv2MRtHYLEdQL4;->INSTANCE:Lcom/miui/video/service/update/gpmarket/-$$Lambda$UHnCwDrrspLvXBv2MRtHYLEdQL4;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lcom/miui/video/common/library/utils/RxSchedulerUtils;->applySchedulersIoToMain()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/update/gpmarket/GPMarketUpdate$1;-><init>(Lcom/miui/video/service/update/gpmarket/GPMarketUpdate;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public startUpdate(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/AppUtils;->haveAppSupportIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

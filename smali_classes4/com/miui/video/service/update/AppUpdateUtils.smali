.class public Lcom/miui/video/service/update/AppUpdateUtils;
.super Ljava/lang/Object;
.source "AppUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;,
        Lcom/miui/video/service/update/AppUpdateUtils$NetResultHandler;,
        Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;,
        Lcom/miui/video/service/update/AppUpdateUtils$Holder;
    }
.end annotation


# static fields
.field private static final MSG_WHAT_CHECK_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppUpdateUtils"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIAppUpdateMarkets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/service/update/IAppUpdateMarket;",
            ">;"
        }
    .end annotation
.end field

.field private mResultEntity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/service/update/entity/UpdateResultEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mIAppUpdateMarkets:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mResultEntity:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    new-instance v1, Lcom/miui/video/service/update/AppUpdateUtils$NetResultHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lcom/miui/video/service/update/AppUpdateUtils$NetResultHandler;-><init>(Landroid/os/Looper;Lcom/miui/video/service/update/AppUpdateUtils;Lcom/miui/video/service/update/AppUpdateUtils$1;)V

    iput-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/service/update/AppUpdateUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/update/AppUpdateUtils;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/service/update/AppUpdateUtils;Lcom/miui/video/service/update/entity/UpdateResultEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/update/AppUpdateUtils;->handlerCheckResult(Lcom/miui/video/service/update/entity/UpdateResultEntity;)V

    return-void
.end method

.method private compareVersion(Lcom/miui/video/service/update/entity/UpdateResultEntity;Lcom/miui/video/service/update/entity/UpdateResultEntity;)Lcom/miui/video/service/update/entity/UpdateResultEntity;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compareVersion firstEntity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";secondEntity is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getStatue()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "compareVersion secondEntity.getResponse() != null and has update"

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "compareVersion firstEntity.getResponse() == null"

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v0

    iget v0, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionCode:I

    invoke-virtual {p2}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v1

    iget v1, v1, Lcom/xiaomi/market/sdk/UpdateResponse;->versionCode:I

    if-ge v0, v1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v0

    iget v0, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionCode:I

    invoke-virtual {p2}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v1

    iget v1, v1, Lcom/xiaomi/market/sdk/UpdateResponse;->versionCode:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mIAppUpdateMarkets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getMarket()Lcom/miui/video/service/update/IAppUpdateMarket;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mIAppUpdateMarkets:Ljava/util/List;

    invoke-virtual {p2}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getMarket()Lcom/miui/video/service/update/IAppUpdateMarket;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_2

    return-object p2

    :cond_2
    return-object p1
.end method

.method public static get()Lcom/miui/video/service/update/AppUpdateUtils;
    .locals 1

    invoke-static {}, Lcom/miui/video/service/update/AppUpdateUtils$Holder;->access$100()Lcom/miui/video/service/update/AppUpdateUtils;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized handlerCheckResult(Lcom/miui/video/service/update/entity/UpdateResultEntity;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mResultEntity:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerCheckResult resultEntity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getMarket()Lcom/miui/video/service/update/IAppUpdateMarket;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-direct {p0, v0, p1}, Lcom/miui/video/service/update/AppUpdateUtils;->compareVersion(Lcom/miui/video/service/update/entity/UpdateResultEntity;Lcom/miui/video/service/update/entity/UpdateResultEntity;)Lcom/miui/video/service/update/entity/UpdateResultEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mIAppUpdateMarkets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mResultEntity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    if-eqz p1, :cond_4

    const-string p1, ""

    const-string v0, ""

    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {v1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {p1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object p1

    iget-object p1, p1, Lcom/xiaomi/market/sdk/UpdateResponse;->updateLog:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {v0}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionName:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {v1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getStatue()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1, p1, v0}, Lcom/miui/video/service/update/AppUpdateUtils;->handlerRefreshView(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handlerRefreshView(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;->onShowUpdateView(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startCheck$20(Lcom/miui/video/service/update/AppUpdateUtils;Lcom/miui/video/service/update/IAppUpdateMarket;ILcom/xiaomi/market/sdk/UpdateResponse;)V
    .locals 3

    new-instance v0, Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-direct {v0}, Lcom/miui/video/service/update/entity/UpdateResultEntity;-><init>()V

    invoke-virtual {v0, p2}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->setStatue(I)V

    invoke-virtual {v0, p1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->setMarket(Lcom/miui/video/service/update/IAppUpdateMarket;)V

    invoke-virtual {v0, p3}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->setResponse(Lcom/xiaomi/market/sdk/UpdateResponse;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateReturned statue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nappUpdateMarket "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n updateResponse "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string p1, " is null "

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private startCheck(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isUpdateRegion()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    if-eqz v0, :cond_2

    const-string p1, ""

    const-string v0, ""

    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {v1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {p1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object p1

    iget-object p1, p1, Lcom/xiaomi/market/sdk/UpdateResponse;->updateLog:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {v0}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionName:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {v1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getStatue()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lcom/miui/video/service/update/AppUpdateUtils;->handlerRefreshView(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mIAppUpdateMarkets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/service/update/IAppUpdateMarket;

    new-instance v2, Lcom/miui/video/service/update/-$$Lambda$AppUpdateUtils$MTGUFPQ1yq8oVYsH7pA48qkAJWo;

    invoke-direct {v2, p0, v1}, Lcom/miui/video/service/update/-$$Lambda$AppUpdateUtils$MTGUFPQ1yq8oVYsH7pA48qkAJWo;-><init>(Lcom/miui/video/service/update/AppUpdateUtils;Lcom/miui/video/service/update/IAppUpdateMarket;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/service/update/IAppUpdateMarket;->setUpdateListener(Lcom/xiaomi/market/sdk/XiaomiUpdateListener;)V

    invoke-virtual {v1, p1}, Lcom/miui/video/service/update/IAppUpdateMarket;->startCheckVersion(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static stringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/miui/video/service/update/AppUpdateUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public varargs addAppUpdateMarkets([Lcom/miui/video/service/update/IAppUpdateMarket;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mIAppUpdateMarkets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mIAppUpdateMarkets:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public cancelUpdate()V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/service/update/AppUpdateUtils;->getCurrentDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {v1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getMarket()Lcom/miui/video/service/update/IAppUpdateMarket;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {v1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getMarket()Lcom/miui/video/service/update/IAppUpdateMarket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/service/update/IAppUpdateMarket;->cancelUpdate()V

    :cond_0
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v1

    const-string v2, "next_ask_mimarket_update"

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkVersion(Landroid/content/Context;Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;->ALWAYS:Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/video/service/update/AppUpdateUtils;->startCheck(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p2

    const-string v0, "next_ask_mimarket_update"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/service/update/AppUpdateUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const-string p2, ""

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/service/update/AppUpdateUtils;->handlerRefreshView(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/video/service/update/AppUpdateUtils;->startCheck(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public registerUpdateCallback(Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mIAppUpdateMarkets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/service/update/IAppUpdateMarket;

    invoke-virtual {v1}, Lcom/miui/video/service/update/IAppUpdateMarket;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mIAppUpdateMarkets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public startUpdate(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/service/update/AppUpdateUtils;->getCurrentDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {v1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getMarket()Lcom/miui/video/service/update/IAppUpdateMarket;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mUpdateResultEntity:Lcom/miui/video/service/update/entity/UpdateResultEntity;

    invoke-virtual {v1}, Lcom/miui/video/service/update/entity/UpdateResultEntity;->getMarket()Lcom/miui/video/service/update/IAppUpdateMarket;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/video/service/update/IAppUpdateMarket;->startUpdate(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v1, "next_ask_mimarket_update"

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterUpdateCallback(Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/AppUpdateUtils;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

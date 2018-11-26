.class public Lcom/miui/networkassistant/dual/SimCardHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "DualSimCardHelper"

.field private static sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mImsi1:Ljava/lang/String;

.field private mImsi2:Ljava/lang/String;

.field protected mIsSim1Inserted:Z

.field private mIsSim2Inserted:Z

.field private mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;


# direct methods
.method static synthetic -wrap0(Lcom/miui/networkassistant/dual/SimCardHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->initForUIProcess()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/dual/SimCardHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/dual/SimCardHelper$1;-><init>(Lcom/miui/networkassistant/dual/SimCardHelper;)V

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->updateSimState()Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/networkassistant/dual/SimCardHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/dual/SimCardHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static asyncInit(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/dual/SimCardHelper$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/dual/SimCardHelper$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;
    .locals 2

    const-class v1, Lcom/miui/networkassistant/dual/SimCardHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/dual/SimCardHelper;->sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/dual/SimCardHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/dual/SimCardHelper;->sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;

    :goto_0
    sget-object v0, Lcom/miui/networkassistant/dual/SimCardHelper;->sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-direct {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->initForUIProcess()V

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/dual/SimCardHelper;->sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/dual/SimCardHelper;->sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    return-void
.end method

.method private initForUIProcess()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/dual/DualSimInfoManager;->registerChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V

    return-void
.end method

.method private makeSimUserInfo(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    const-string/jumbo v0, "slotNum"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    const-string/jumbo v0, "simId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimId(J)V

    const-string/jumbo v0, "simName"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isVirtualSim(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimName(Ljava/lang/String;)V

    const-string/jumbo v0, "iccId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setIccid(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimInserted(Z)V

    const-string/jumbo v0, "DualSimCardHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "make siminfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCurrentMobileSlotNum()I
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getCurrentMobileSlotNum()I

    move-result v0

    return v0
.end method

.method public getSim1Imsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    return-object v0
.end method

.method public getSim2Imsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    return-object v0
.end method

.method public getSimImsi(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlotNumByImsi(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isDualSimInserted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualSimInsertedOne()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isImsiMissed()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isSim1Inserted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    return v0
.end method

.method public isSim2Inserted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    return v0
.end method

.method public isSimCardReady(I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "miui.telephony.TelephonyManager"

    invoke-static {v2}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v2

    const-string/jumbo v3, "getDefault"

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v2

    const-string/jumbo v3, "getSimStateForSlot"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/a/c/d;->btV()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isSimInserted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateSimState()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/DualSimInfoManager;->getSimInfoList(Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v5, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    iput-boolean v5, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DualSimCardHelper"

    const-string/jumbo v3, "get sim info exception!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_4

    const-string/jumbo v0, "DualSimCardHelper"

    const-string/jumbo v1, "one sim card inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "slotNum"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v4, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    iput-boolean v5, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    iget-object v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    const-string/jumbo v1, "default"

    iput-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->makeSimUserInfo(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isImsiMissed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_3
    if-ne v1, v4, :cond_2

    iput-boolean v5, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    iput-boolean v4, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    const-string/jumbo v2, "default"

    iput-object v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->makeSimUserInfo(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "DualSimCardHelper"

    const-string/jumbo v1, "two sim cards inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "slotNum"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->makeSimUserInfo(Ljava/lang/String;Ljava/util/Map;)V

    iput-boolean v4, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "slotNum"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->makeSimUserInfo(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "DualSimCardHelper"

    const-string/jumbo v1, "no sim card inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

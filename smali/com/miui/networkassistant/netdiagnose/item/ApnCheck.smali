.class public Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;
.super Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_ApnCheck"

.field private static mApnManager:Lcom/miui/networkassistant/netdiagnose/APNManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mApnManager:Lcom/miui/networkassistant/netdiagnose/APNManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/networkassistant/netdiagnose/APNManager;

    invoke-direct {v0, p1}, Lcom/miui/networkassistant/netdiagnose/APNManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mApnManager:Lcom/miui/networkassistant/netdiagnose/APNManager;

    return-void
.end method


# virtual methods
.method public check()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->checkAPN()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mIsStatusNormal:Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mIsStatusNormal:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->networkChanged()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "other"

    const-string/jumbo v2, "apn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsStep(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public checkAPN()Z
    .locals 7

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mApnManager:Lcom/miui/networkassistant/netdiagnose/APNManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/APNManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkDiagnostics_ApnCheck"

    const-string/jumbo v1, "current Apn is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "NetworkDiagnostics_ApnCheck"

    const-string/jumbo v1, "current imsi is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mApnManager:Lcom/miui/networkassistant/netdiagnose/APNManager;

    invoke-virtual {v2, v1, v0}, Lcom/miui/networkassistant/netdiagnose/APNManager;->isExistAPNForCurrentSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "NetworkDiagnostics_ApnCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " isExistAPNForCurrentSim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    return v6

    :cond_2
    sget-object v2, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mApnManager:Lcom/miui/networkassistant/netdiagnose/APNManager;

    invoke-virtual {v2, v1, v0}, Lcom/miui/networkassistant/netdiagnose/APNManager;->currentApnIsModified(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mApnManager:Lcom/miui/networkassistant/netdiagnose/APNManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/APNManager;->restoreAPN()V

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->SUCCESS:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0
.end method

.method public getFixingWaitProgressDlgMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070367

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSolution()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSummary()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;
.super Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_SignalStrengthCheck"


# instance fields
.field private mCurMobileSlotNum:I

.field private mImsi:Ljava/lang/String;

.field private mItemSummary:Ljava/lang/String;

.field private mNetworkOperatorName:Ljava/lang/String;

.field private mNetworkType:I

.field private mPhoneType:I

.field private mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field private mSolution:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mCurMobileSlotNum:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    iput v1, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mNetworkType:I

    iput v1, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mPhoneType:I

    invoke-static {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    return-void
.end method

.method private getNetworkOperatorNameForSlot(I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getDefault"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getNetworkOperatorNameForSlot"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeForSlot(I)I
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getDefault"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getPhoneTypeForSlot"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btV()I

    move-result v0

    return v0
.end method


# virtual methods
.method public check()V
    .locals 7

    const v6, 0x7f070389

    const v5, 0x7f070377

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mSolution:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mIsStatusNormal:Z

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v2}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mCurMobileSlotNum:I

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    iget v3, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mCurMobileSlotNum:I

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimCardReady(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070388

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mItemSummary:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mCurMobileSlotNum:I

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getNetworkTypeForSlot(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mNetworkType:I

    iget v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mCurMobileSlotNum:I

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->getPhoneTypeForSlot(I)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mPhoneType:I

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    iget v3, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mCurMobileSlotNum:I

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSimImsi(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mCurMobileSlotNum:I

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->getNetworkOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mNetworkOperatorName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mItemSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mSolution:Ljava/lang/String;

    const-string/jumbo v0, "NetworkDiagnostics_SignalStrengthCheck"

    const-string/jumbo v2, "check() imsi is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mIsStatusNormal:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mCurMobileSlotNum:I

    invoke-static {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "NetworkDiagnostics_SignalStrengthCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "check() simUserInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " phoneType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mPhoneType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "networkType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mNetworkType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->networkChanged()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "other"

    const-string/jumbo v2, "signal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsStep(Ljava/util/Map;)V

    :cond_2
    return-void

    :cond_3
    iget v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mPhoneType:I

    if-eq v2, v4, :cond_4

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mNetworkOperatorName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mItemSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mSolution:Ljava/lang/String;

    const-string/jumbo v0, "NetworkDiagnostics_SignalStrengthCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check() networkOperatorName is null. netowrkType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    sget v2, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->mCurrentSignalStrength:I

    if-lt v2, v4, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mIsStatusNormal:Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07036e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mItemSummary:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "detail"

    const v2, 0x7f070395

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->SUCCESS:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07036d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mSolution:Ljava/lang/String;

    return-object v0
.end method

.method public getItemSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;->mItemSummary:Ljava/lang/String;

    return-object v0
.end method

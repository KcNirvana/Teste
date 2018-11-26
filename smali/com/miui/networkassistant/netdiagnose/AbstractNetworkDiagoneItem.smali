.class public abstract Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected mCm:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field protected mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

.field protected mIsStatusNormal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mIsStatusNormal:Z

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    iput-object p1, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mCm:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public abstract check()V
.end method

.method public abstract fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;
.end method

.method public getFixingWaitProgressDlgMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsContinueDiagnose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mIsStatusNormal:Z

    return v0
.end method

.method public getIsStatusNormal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mIsStatusNormal:Z

    return v0
.end method

.method public abstract getItemName()Ljava/lang/String;
.end method

.method public abstract getItemSolution()Ljava/lang/String;
.end method

.method public abstract getItemSummary()Ljava/lang/String;
.end method

.method public networkChanged()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getActiveNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getDiagnosingNetworkType()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getDiagnosingNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->mIsStatusNormal:Z

    return-void
.end method

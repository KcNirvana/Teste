.class public Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;
.super Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_ChangedCheck"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;->mIsStatusNormal:Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getActiveNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getDiagnosingNetworkType()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getDiagnosingNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;->mIsStatusNormal:Z

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->SUCCESS:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070399

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSolution()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemSummary()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07039a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

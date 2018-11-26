.class public Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;
.super Lcom/miui/networkassistant/dual/SimCardHelper;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/dual/SimCardHelper;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/dual/SimCardHelper;)V

    return-void
.end method


# virtual methods
.method public isSimCardReady(I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "miui.telephony.TelephonyManager"

    invoke-static {v1}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v1

    const-string/jumbo v2, "getDefault"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v1

    const-string/jumbo v2, "getSimState"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/a/c/d;->btV()I

    move-result v1

    const/4 v2, 0x5

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public updateSimState()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;->mIsSim1Inserted:Z

    const-string/jumbo v0, "default"

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;->mImsi1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;->mImsi1:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;->mImsi1:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;->mIsSim1Inserted:Z

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimInserted(Z)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;->isImsiMissed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;->mIsSim1Inserted:Z

    goto :goto_0
.end method

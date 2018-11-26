.class public Lcom/miui/gamebooster/gbservices/j;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private pI:I

.field private pJ:Lcom/miui/gamebooster/service/d;

.field private pK:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gamebooster/gbservices/j;->pI:I

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/j;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/j;->pJ:Lcom/miui/gamebooster/service/d;

    return-void
.end method

.method private sA(IZLandroid/os/Handler;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v2

    iget v3, p0, Lcom/miui/gamebooster/gbservices/j;->pI:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/miui/gamebooster/gbservices/j;->pI:I

    if-ne v3, v0, :cond_2

    :cond_1
    iget v2, p0, Lcom/miui/gamebooster/gbservices/j;->pI:I

    if-nez v2, :cond_4

    move v2, v1

    :cond_2
    :goto_0
    if-nez p2, :cond_5

    const-string/jumbo v3, "gb_function_user_phone_active"

    invoke-static {v3, v2}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    if-eqz v2, :cond_3

    const-string/jumbo v2, "GameBoosterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "gb_function_user_phone_active"

    invoke-static {v4, v0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lmiui/telephony/TelephonyManager;->setIccCardActivate(IZ)V

    iput v1, p0, Lcom/miui/gamebooster/gbservices/j;->pI:I

    invoke-direct {p0, p3}, Lcom/miui/gamebooster/gbservices/j;->sz(Landroid/os/Handler;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    if-nez v2, :cond_3

    const-string/jumbo v2, "GameBoosterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "gb_function_user_phone_active"

    invoke-static {v4, v0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    const-string/jumbo v3, "gb_function_user_phone_active"

    invoke-static {v3, v0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Lmiui/telephony/TelephonyManager;->setIccCardActivate(IZ)V

    const-string/jumbo v2, "gb_function_user_phone_active"

    invoke-static {v2, v0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    iput v0, p0, Lcom/miui/gamebooster/gbservices/j;->pI:I

    invoke-direct {p0, p3}, Lcom/miui/gamebooster/gbservices/j;->sz(Landroid/os/Handler;)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private sB(ZLandroid/os/Handler;)V
    .locals 1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/gamebooster/gbservices/j;->sA(IZLandroid/os/Handler;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/gamebooster/gbservices/j;->sA(IZLandroid/os/Handler;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic sC(Lcom/miui/gamebooster/gbservices/j;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/gbservices/j;->pI:I

    return p1
.end method

.method private sz(Landroid/os/Handler;)V
    .locals 4

    new-instance v0, Lcom/miui/gamebooster/gbservices/C;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/C;-><init>(Lcom/miui/gamebooster/gbservices/j;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/j;->pK:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mDataBooster...stop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/j;->pJ:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/miui/gamebooster/gbservices/j;->sB(ZLandroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/j;->pK:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mDataBooster...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/j;->pJ:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/miui/gamebooster/gbservices/j;->sB(ZLandroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public rd()Z
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/a/F;->ik()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public re()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/j;->pK:Z

    return-void
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/j;->pK:Z

    return-void
.end method

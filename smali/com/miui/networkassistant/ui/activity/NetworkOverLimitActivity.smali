.class public Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mIsIgnore:Z

.field private mIsOverLimitType:I

.field private mIsTrafficPurchaseAvailable:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsIgnore:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->enableMobileDataConnection()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->resetDailyUsedCardSetting()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private enableMobileDataConnection()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_policy"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setMobileDataState(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setMobilePolicyEnable(Z)Z

    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private resetDailyUsedCardSetting()V
    .locals 4

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkCount(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkTime(J)Z

    :cond_0
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0702bb

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    sget-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sim_slot_num_tag"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "sim_slot_num_tag"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v3

    if-eqz v3, :cond_17

    if-nez v2, :cond_3

    const v3, 0x7f0702fa

    :goto_0
    const-string/jumbo v5, "%s-%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f0702bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move v3, v2

    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsTrafficPurchaseAvailable:Z

    const v2, 0x7f030077

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v2, 0x7f0a00b6

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getOverDataUsageStopNetworkType()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsTrafficPurchaseAvailable:Z

    if-eqz v6, :cond_4

    const v6, 0x7f070358

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$2;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;I)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_2
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverLimitStopNetworkTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverDailyLimitTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverRoamingDailyLimitTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureOverLimitStopNetworkTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficProtectedStopNetTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v5

    invoke-static {v5}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    if-nez v5, :cond_b

    cmp-long v2, v2, v16

    if-gez v2, :cond_a

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v18

    cmp-long v3, v6, v18

    if-gez v3, :cond_c

    const/4 v3, 0x1

    :goto_4
    or-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_f

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-gez v2, :cond_e

    const/4 v2, 0x1

    :goto_5
    or-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_11

    cmp-long v2, v10, v16

    if-gez v2, :cond_10

    const/4 v2, 0x1

    :goto_6
    or-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_13

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v6

    cmp-long v2, v12, v6

    if-gez v2, :cond_12

    const/4 v2, 0x1

    :goto_7
    or-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v5, 0x5

    if-ne v2, v5, :cond_15

    cmp-long v2, v14, v16

    if-gez v2, :cond_14

    const/4 v2, 0x1

    :goto_8
    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->enableMobileDataConnection()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsIgnore:Z

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->finish()V

    return-void

    :cond_3
    const v3, 0x7f0702fb

    goto/16 :goto_0

    :cond_4
    const v3, 0x7f0702bd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    const v3, 0x7f07034b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_7

    const v3, 0x7f0702c7

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0702c8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_8

    const v3, 0x7f07033e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const v3, 0x7f0c000c

    invoke-virtual {v6, v3, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_2

    const v3, 0x7f0702cb

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0702cc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_16
    new-instance v2, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$3;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V

    const v3, 0x104000a

    invoke-virtual {v4, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$4;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V

    const v3, 0x7f0702be

    invoke-virtual {v4, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$5;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackActiveNetworkAssistant(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->registerPhoneStateListener()V

    return-void

    :cond_17
    move v3, v2

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsIgnore:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendOpenDataRoamingNotify(Landroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->unRegisterPhoneStateListener()V

    return-void

    :cond_2
    iget v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    invoke-static {p0, v1, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDataUsageOverLimit(Landroid/content/Context;II)V

    goto :goto_0
.end method

.class public Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;
.super Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CHARGE_URL:Ljava/lang/String; = "https://app.mipay.com?id=mipay.phoneRecharge&miref=42&slot_id="

.field private static final TAG:Ljava/lang/String; = "ShowSmsDetailActivity"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_BILL:I = 0x1

.field public static final TYPE_TRAFFIC:I


# instance fields
.field private isDataSaved:Z

.field private mAdjustCMDText:Landroid/widget/TextView;

.field private mBackTextView:Landroid/widget/TextView;

.field private mChargeMenuItem:Landroid/view/MenuItem;

.field private mCorrectFailLayout:Landroid/view/View;

.field private mCorrectSuccessLayout:Landroid/view/View;

.field private mFailReason:Landroid/widget/TextView;

.field private mLeftText:Landroid/widget/TextView;

.field private mLeftUnit:Landroid/widget/TextView;

.field private mReportMenuItem:Landroid/view/MenuItem;

.field private mServiceConnected:Z

.field private mSettingMenuItem:Landroid/view/MenuItem;

.field private mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field private mSmsDetail:Ljava/lang/String;

.field private mSmsDetailView:Landroid/widget/TextView;

.field private mSmsResult:I

.field private mSmsShowType:I

.field private mSubTitle:Landroid/widget/TextView;

.field private mSuccessTitle:Landroid/widget/TextView;

.field private mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mTrafficManageConnection:Landroid/content/ServiceConnection;

.field private mUsageText:Landroid/widget/TextView;

.field private mUsageUnit:Landroid/widget/TextView;


# direct methods
.method static synthetic -set0(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mServiceConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Lcom/miui/common/a/b/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->saveUploadCorrectionResult()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->setSubTitle()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private initView()V
    .locals 7

    const/4 v6, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mBackTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0385

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetailView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    const v0, 0x7f0a037a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectSuccessLayout:Landroid/view/View;

    const v0, 0x7f0a0382

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectFailLayout:Landroid/view/View;

    const v0, 0x7f0a037b

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSuccessTitle:Landroid/widget/TextView;

    const v0, 0x7f0a037d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mUsageText:Landroid/widget/TextView;

    const v0, 0x7f0a037e

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mUsageUnit:Landroid/widget/TextView;

    const v0, 0x7f0a0380

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mLeftText:Landroid/widget/TextView;

    const v0, 0x7f0a0381

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mLeftUnit:Landroid/widget/TextView;

    const v0, 0x7f0a0384

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mFailReason:Landroid/widget/TextView;

    const v0, 0x7f0a0386

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->resetTitle()V

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillSmsDetail()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetail:Ljava/lang/String;

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillTcResultCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsResult:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetailView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetailView:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetailView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsResult:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectSuccessLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectFailLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAppContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v0, v1, v4, v5}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getPreAdjustTimeTips(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSuccessTitle:Landroid/widget/TextView;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const v0, 0x7f070207

    invoke-virtual {p0, v0, v2}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastTcUsed()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mUsageText:Landroid/widget/TextView;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mUsageUnit:Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastTcRemain()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mLeftText:Landroid/widget/TextView;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mLeftUnit:Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficSmsDetail()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficTcResultCode()I

    move-result v0

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsResult:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectSuccessLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectFailLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsResult:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_4
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mFailReason:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :pswitch_0
    const v0, 0x7f070208

    goto :goto_4

    :pswitch_1
    const v0, 0x7f070209

    goto :goto_4

    :pswitch_2
    const v0, 0x7f07020a

    goto :goto_4

    :pswitch_3
    const v0, 0x7f07020b

    goto :goto_4

    :pswitch_4
    const v0, 0x7f07020c

    goto :goto_4

    :pswitch_5
    const v0, 0x7f07020d

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectSuccessLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectFailLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private resetTitle()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7f0703de

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getDualCardTitle(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const v0, 0x7f0703dd

    goto :goto_0
.end method

.method private declared-synchronized saveUploadCorrectionResult()V
    .locals 9

    const/4 v2, 0x0

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetail:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillTcResult()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-ne v0, v4, :cond_4

    const/4 v0, 0x2

    move v3, v0

    :goto_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mServiceConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getInstructions(I)Ljava/util/Map;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    :try_start_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v7, "#"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "#"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-ne v3, v4, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsNum()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsContent()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v2, v7, v0

    :cond_1
    const/4 v0, 0x1

    aget-object v0, v7, v0

    :goto_5
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTcSmsReportCache(Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->isDataSaved:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficTcResult()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    :cond_4
    move v3, v4

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    goto/16 :goto_2

    :cond_5
    move-object v0, v2

    move-object v1, v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_4

    :cond_7
    move-object v0, v2

    goto :goto_3
.end method

.method private setSubTitle()V
    .locals 6

    const v0, 0x7f0a0378

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSubTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsResult:I

    if-eqz v3, :cond_1

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAppContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v0, v1, v4, v5}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getPreAdjustTimeTips(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private smsReportDeclare()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070325

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;

    invoke-direct {v5, p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;-><init>(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V

    invoke-direct {v3, v4, v5}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startChargeActivity()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://app.mipay.com?id=mipay.phoneRecharge&miref=42&slot_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShowSmsDetailActivity"

    const-string/jumbo v2, "go to phoneRecharge failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    const-string/jumbo v2, "100001"

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->navigationToTrafficPurchasePage(Landroid/app/Activity;Lcom/miui/networkassistant/config/SimUserInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startSmsDetailActivity(Landroid/app/Activity;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->finish()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sim_slot_num_tag"

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class v1, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p0, v1, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a003f -> :sswitch_0
        0x7f0a0386 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->setTranslucentStatus(I)V

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->bindTrafficManageService()V

    return-void
.end method

.method public onCreateContentView()I
    .locals 1

    const v0, 0x7f03014d

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0433

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mReportMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0a0435

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mChargeMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0a0436

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSettingMenuItem:Landroid/view/MenuItem;

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSettingMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-ne v0, v2, :cond_1

    const v0, 0x7f0703e2

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mChargeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return v2

    :cond_1
    const v0, 0x7f0703e0

    goto :goto_0
.end method

.method public onCustomizeActionBar(Landroid/app/ActionBar;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->unbindTrafficManageService()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mReportMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->smsReportDeclare()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mChargeMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->startChargeActivity()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSettingMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sim_slot_num_tag"

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v1, v2, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

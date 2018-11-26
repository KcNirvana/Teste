.class public Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;
.super Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;
.source ""


# static fields
.field static final SHOW_GUIDE_REQUEST:I = 0x0

.field static final SHOW_GUIDE_RESULT_OPEN:I = 0xcc


# instance fields
.field private final TAG:Ljava/lang/String;

.field private layoutAlarm:Landroid/view/View;

.field private layoutFastOpen:Landroid/view/View;

.field private layoutHasLuckyMoney:Landroid/view/View;

.field private layoutNoLuckyMoney:Landroid/view/View;

.field private mAppContext:Landroid/content/Context;

.field private mBannerSummaryTextView:Landroid/widget/TextView;

.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mFastOpenTextView:Landroid/widget/TextView;

.field private mFunctionNoWorkView:Landroid/widget/TextView;

.field private mLayoutToolbar:Landroid/view/View;

.field private mLuckyAlarmTextView:Landroid/widget/TextView;

.field private mLuckyMaxSourceTextView:Landroid/widget/TextView;

.field private mLuckyMoneyWarningInfoView:Landroid/view/View;

.field private mLuckyWarningCountTextView:Landroid/widget/TextView;

.field private mMasterSwitchView:Landroid/view/View;

.field private mMoreSettingClickListener:Landroid/view/View$OnClickListener;

.field private mMoreSettingTextView:Landroid/widget/TextView;

.field private mMoreSettingView:Landroid/view/View;

.field private mNoLuckyMoneyView:Landroid/view/View;

.field private mShareButton:Landroid/widget/Button;

.field private mXiaomiLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mXiaomiLuckyMoneySliding:Lmiui/widget/SlidingButton;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private txvAlarmStatus:Landroid/widget/TextView;

.field private txvFastOpenStatus:Landroid/widget/TextView;

.field private txvNumberOfLuckyMoney:Landroid/widget/TextView;

.field private txvWarningSummary:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneySliding:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->showCloseDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->updateXiaomiLuckyMoney(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;-><init>()V

    const-class v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$2;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private initBannerSummaryView()V
    .locals 10

    const v9, 0x7f0701ce

    const/4 v8, 0x1

    const/high16 v7, 0x42c80000    # 100.0f

    const/16 v4, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getWarningLuckyMoneyCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mNoLuckyMoneyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mBannerSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLuckyMoneyWarningInfoView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutHasLuckyMoney:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutNoLuckyMoney:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvNumberOfLuckyMoney:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLuckyWarningCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getMMMoney()J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v9, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLuckyMaxSourceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getQQMoney()J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v9, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mNoLuckyMoneyView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mBannerSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLuckyMoneyWarningInfoView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutHasLuckyMoney:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutNoLuckyMoney:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    const/4 v1, 0x0

    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLayoutToolbar:Landroid/view/View;

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLayoutToolbar:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotchUtil;->setNotchToolbarMarginTop(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvWarningSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvWarningSummary:Landroid/widget/TextView;

    const v2, 0x7f070187

    invoke-virtual {p0, v2}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mNoLuckyMoneyView:Landroid/view/View;

    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneySliding:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneySliding:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneySliding:Lmiui/widget/SlidingButton;

    const v2, 0x7f020309

    invoke-direct {p0, v0, v2}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->setSlidingButtonDrawable(Lmiui/widget/SlidingButton;I)V

    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingView:Landroid/view/View;

    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutAlarm:Landroid/view/View;

    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutFastOpen:Landroid/view/View;

    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMasterSwitchView:Landroid/view/View;

    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLuckyAlarmTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFastOpenTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingTextView:Landroid/widget/TextView;

    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mBannerSummaryTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLuckyMoneyWarningInfoView:Landroid/view/View;

    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLuckyWarningCountTextView:Landroid/widget/TextView;

    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLuckyMaxSourceTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvNumberOfLuckyMoney:Landroid/widget/TextView;

    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvAlarmStatus:Landroid/widget/TextView;

    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvFastOpenStatus:Landroid/widget/TextView;

    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutHasLuckyMoney:Landroid/view/View;

    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutNoLuckyMoney:Landroid/view/View;

    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFunctionNoWorkView:Landroid/widget/TextView;

    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mShareButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFunctionNoWorkView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x7f070183

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvAlarmStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u5df2\u5f00\u542f"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvFastOpenStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u5df2\u5f00\u542f"

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    const-string/jumbo v2, "com.miui.securityadd"

    invoke-static {v0, v2}, Lcom/miui/luckymoney/utils/PackageUtil;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "com.miui.securityadd"

    invoke-static {v0, v2}, Lcom/miui/luckymoney/utils/PackageUtil;->getAppVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    const v2, 0xef18

    if-le v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->updateXiaomiLuckyMoney(Z)V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->initBannerSummaryView()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneySliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutAlarm:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutFastOpen:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMasterSwitchView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mShareButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFunctionNoWorkView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const-string/jumbo v0, "\u5df2\u5173\u95ed"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "\u5df2\u5173\u95ed"

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    goto :goto_3
.end method

.method private sendConfigChangedBroadcast(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.config_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "config_changed_flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setSlidingButtonDrawable(Lmiui/widget/SlidingButton;I)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "mSliderOn"

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/a/c/c;->btJ(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method private showCloseDialog()V
    .locals 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v0, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0701bd

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f030017

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a00b6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    const v4, 0x7f0701be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$5;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    const v2, 0x7f070184

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$6;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    const v2, 0x7f0701bf

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$7;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showGuide()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFirstStartUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/luckymoney/ui/activity/GuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->showTipsDialog()V

    goto :goto_0
.end method

.method private showTipsDialog()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isShouldUserTips()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0, v5}, Lcom/miui/luckymoney/config/CommonConfig;->setShouldUserTips(Z)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v0, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f070186

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f030017

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a00b6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    const v4, 0x7f070188

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f070189

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$4;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private updateXiaomiLuckyMoney(Z)V
    .locals 4

    const v3, 0x7f0800d8

    const v2, 0x7f0800d7

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->setXiaomiLuckyMoneyEnable(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLuckyAlarmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFastOpenTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/upgrade/LuckyMoneyHelper;->startLuckyMoneyService(Landroid/content/Context;)V

    :goto_0
    const-string/jumbo v0, "show_float_window_button"

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->sendConfigChangedBroadcast(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLuckyAlarmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFastOpenTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/upgrade/LuckyMoneyHelper;->stopLuckyMoneyService(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/16 v0, 0xcc

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setFirstStartUp(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setXiaomiLuckyMoneyEnable(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setDesktopFloatWindowEnable(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneySliding:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->updateXiaomiLuckyMoney(Z)V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->showTipsDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setFirstStartUp(Z)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->showGuide()V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isConfigChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upload settings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;

    invoke-direct {v0}, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;->onResume()V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvAlarmStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u5df2\u5f00\u542f"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvFastOpenStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u5df2\u5f00\u542f"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string/jumbo v0, "\u5df2\u5173\u95ed"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u5df2\u5173\u95ed"

    goto :goto_1
.end method

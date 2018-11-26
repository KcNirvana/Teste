.class public Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;
.super Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;
.source ""


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBusinessLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mBusniessLuckyWarningSliding:Lmiui/widget/SlidingButton;

.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mDNDEndTime:Landroid/widget/TextView;

.field private mDNDEndTimeIco:Landroid/widget/ImageView;

.field private mDNDEndTimeTile:Landroid/widget/TextView;

.field private mDNDModeChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDNDStartTime:Landroid/widget/TextView;

.field private mDNDStartTimeIco:Landroid/widget/ImageView;

.field private mDNDStartTimeTile:Landroid/widget/TextView;

.field private mDNDType:Landroid/widget/TextView;

.field private mDNDTypeIco:Landroid/widget/ImageView;

.field private mDNDTypeTile:Landroid/widget/TextView;

.field private mDesktopFloatWindowChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDesktopFloatWindowSliding:Lmiui/widget/SlidingButton;

.field private mDoNotDisturbModeSliding:Lmiui/widget/SlidingButton;

.field private mLayoutDND:Landroid/view/View;

.field private mLayoutDNDEndTime:Landroid/view/View;

.field private mLayoutDNDStartTime:Landroid/view/View;

.field private mLayoutDNDType:Landroid/view/View;

.field private mLayoutFloatTips:Landroid/view/View;

.field private mLayoutLuckySoundMode:Landroid/view/View;

.field private mLayoutRemindBussness:Landroid/view/View;

.field private mLayoutRemindGroups:Landroid/view/View;

.field private mLayoutRemindMM:Landroid/view/View;

.field private mLayoutRemindMiLiao:Landroid/view/View;

.field private mLayoutRemindQQ:Landroid/view/View;

.field private mLayoutShake:Landroid/view/View;

.field private mLuckySoundMode:Landroid/widget/TextView;

.field private mMiliaoLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mMiliaoLuckyWarningSliding:Lmiui/widget/SlidingButton;

.field private mOnTextViewClickListener:Landroid/view/View$OnClickListener;

.field private mOnlyNotiGroupLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnlyNotiGroupLuckyMoneySliding:Lmiui/widget/SlidingButton;

.field private mQQLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mQQLuckyWarningSliding:Lmiui/widget/SlidingButton;

.field private mShakeSendStickerChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mShakeSendStickerSliding:Lmiui/widget/SlidingButton;

.field private mWechatLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mWechatLuckyWarningSliding:Lmiui/widget/SlidingButton;

.field private soundModeArr:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mBusniessLuckyWarningSliding:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningSliding:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -get11(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mShakeSendStickerSliding:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -get12(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningSliding:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -get13(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->soundModeArr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDesktopFloatWindowSliding:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDoNotDisturbModeSliding:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLuckySoundMode:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mMiliaoLuckyWarningSliding:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneySliding:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;JLmiui/app/TimePickerDialog$OnTimeSetListener;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->createTimePicker(JLmiui/app/TimePickerDialog$OnTimeSetListener;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->sendConfigChangedBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->setDNDViewEnable(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;-><init>()V

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$2;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$3;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mBusinessLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$4;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mMiliaoLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$6;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDModeChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$7;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mShakeSendStickerChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$8;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDesktopFloatWindowChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private createTimePicker(JLmiui/app/TimePickerDialog$OnTimeSetListener;)V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    new-instance v0, Lmiui/app/TimePickerDialog;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    return-void
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f0a0083

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningSliding:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningSliding:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mMiliaoLuckyWarningSliding:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mBusniessLuckyWarningSliding:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a008f

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneySliding:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDoNotDisturbModeSliding:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mShakeSendStickerSliding:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a008c

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDesktopFloatWindowSliding:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a0095

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDStartTime:Landroid/view/View;

    const v0, 0x7f0a0099

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDEndTime:Landroid/view/View;

    const v0, 0x7f0a009d

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDType:Landroid/view/View;

    const v0, 0x7f0a0090

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutLuckySoundMode:Landroid/view/View;

    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutFloatTips:Landroid/view/View;

    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindMM:Landroid/view/View;

    const v0, 0x7f0a0084

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindQQ:Landroid/view/View;

    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindMiLiao:Landroid/view/View;

    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindBussness:Landroid/view/View;

    const v0, 0x7f0a008d

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindGroups:Landroid/view/View;

    const v0, 0x7f0a0092

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDND:Landroid/view/View;

    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutShake:Landroid/view/View;

    const v0, 0x7f0a0097

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTime:Landroid/widget/TextView;

    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTimeTile:Landroid/widget/TextView;

    const v0, 0x7f0a0098

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTimeIco:Landroid/widget/ImageView;

    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTime:Landroid/widget/TextView;

    const v0, 0x7f0a009a

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTimeTile:Landroid/widget/TextView;

    const v0, 0x7f0a009c

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTimeIco:Landroid/widget/ImageView;

    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDType:Landroid/widget/TextView;

    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDTypeTile:Landroid/widget/TextView;

    const v0, 0x7f0a00a0

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDTypeIco:Landroid/widget/ImageView;

    const v0, 0x7f0a0091

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLuckySoundMode:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mMiliaoLuckyWarningSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mMiliaoLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mBusniessLuckyWarningSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mBusinessLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneySliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDoNotDisturbModeSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDModeChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mShakeSendStickerSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mShakeSendStickerChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDesktopFloatWindowSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDesktopFloatWindowChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDStartTime:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDEndTime:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDType:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutLuckySoundMode:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutFloatTips:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindMM:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindQQ:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindMiLiao:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindBussness:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindGroups:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDND:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutShake:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getWeChatLuckyWarningEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getQQLuckyWarningEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mMiliaoLuckyWarningSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getMiliaoLuckyWarningEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mBusniessLuckyWarningSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getBusinessLuckyWarningEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneySliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getOnlyNotiGroupLuckuMoneyConfig()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDoNotDisturbModeSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mShakeSendStickerSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getShakeSendStickerEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDesktopFloatWindowSliding:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getDesktopFloatWindowEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTime:Landroid/widget/TextView;

    const-string/jumbo v1, "HH:mm"

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStartTime()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTime:Landroid/widget/TextView;

    const-string/jumbo v1, "HH:mm"

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStopTime()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDType:Landroid/widget/TextView;

    sget-object v1, Lcom/miui/luckymoney/config/DoNotDisturbConstants;->DND_TEXT_ID:[I

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDModeLevel()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->soundModeArr:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLuckySoundMode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->soundModeArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckySoundWarningLevel()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeOpen()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->setDNDViewEnable(Z)V

    return-void
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

    invoke-virtual {p0, v0, v1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setDNDViewEnable(Z)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTime:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTimeTile:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTimeIco:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTime:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTimeTile:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTimeIco:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDType:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDTypeTile:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDTypeIco:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDStartTime:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDEndTime:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDType:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v1, v2

    goto :goto_8
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->initView()V

    return-void
.end method

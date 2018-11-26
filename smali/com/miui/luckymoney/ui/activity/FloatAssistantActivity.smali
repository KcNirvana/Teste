.class public Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;
.super Lcom/miui/luckymoney/ui/activity/BaseActivity;
.source ""


# static fields
.field private static final MSG_CHANGE_BUSINESS_PIC:I = 0x1


# instance fields
.field private alipayConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

.field private imgGiveMoney:Landroid/widget/ImageView;

.field private layoutGiveMoney:Landroid/view/View;

.field private mActivityContainer:Landroid/widget/RelativeLayout;

.field private mAppContext:Landroid/content/Context;

.field private mChangeIndex:I

.field private mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

.field private mDialogContainer:Landroid/widget/RelativeLayout;

.field private mGiveLuckyMoneyView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mImgAlipay:Landroid/widget/ImageView;

.field private mImgWechat:Landroid/widget/ImageView;

.field private mLuckyNewsTextView:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRandomExpressionTextView:Landroid/widget/TextView;

.field private mSettingButton:Landroid/widget/Button;

.field private mShakeAgainTextView:Landroid/widget/TextView;

.field private mShoopAgainTextView:Landroid/widget/TextView;

.field private wechatConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->finishActivityDelayed()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->finishActivity()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->postBgChangedDelay()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->startStickerActivity()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    invoke-direct {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    invoke-direct {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->wechatConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    invoke-direct {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->alipayConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mChangeIndex:I

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$2;-><init>(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private finishActivity()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->finish()V

    return-void
.end method

.method private finishActivityDelayed()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$3;-><init>(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initView()V
    .locals 6

    const v5, 0x10100a7

    const/4 v4, 0x0

    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mLuckyNewsTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mRandomExpressionTextView:Landroid/widget/TextView;

    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mShoopAgainTextView:Landroid/widget/TextView;

    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mShakeAgainTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mActivityContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mDialogContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mSettingButton:Landroid/widget/Button;

    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mGiveLuckyMoneyView:Landroid/widget/TextView;

    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->imgGiveMoney:Landroid/widget/ImageView;

    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->layoutGiveMoney:Landroid/view/View;

    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mImgWechat:Landroid/widget/ImageView;

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mImgAlipay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->wechatConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mShakeAgainTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->wechatConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->alipayConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mShoopAgainTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->alipayConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->wechatConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mImgWechat:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->wechatConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->alipayConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mImgAlipay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->alipayConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mLuckyNewsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mRandomExpressionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mShoopAgainTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mShakeAgainTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mActivityContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mDialogContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mSettingButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mImgWechat:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mImgAlipay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-boolean v0, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->isFour:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->layoutGiveMoney:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mGiveLuckyMoneyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-object v2, v2, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->icon1:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-object v3, v3, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->icon2:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->imgGiveMoney:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-wide v2, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatWindowHot(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method private postBgChangedDelay()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-boolean v4, v4, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->isFour:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-boolean v4, v4, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->isFlashing:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-wide v4, v4, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->flashStartTime:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-wide v4, v4, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->flashEndTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget v2, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mChangeIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mChangeIndex:I

    iget v2, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mChangeIndex:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    :goto_0
    iput v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mChangeIndex:I

    iget v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mChangeIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-object v3, v3, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->icon1:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->imgGiveMoney:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-object v3, v3, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->icon2:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private startStickerActivity()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/PackageUtil;->getStickerIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mAppContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/miui/luckymoney/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-super {p0, p1}, Lcom/miui/luckymoney/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->wechatConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->alipayConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    invoke-static {p0, v0, v1, v2}, Lcom/miui/luckymoney/webapi/FloatResourceHelper;->initConfig(Landroid/content/Context;Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    iget-boolean v0, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->isFour:Z

    if-eqz v0, :cond_0

    const v0, 0x7f030001

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->initView()V

    return-void

    :cond_0
    const v0, 0x7f030002

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/luckymoney/ui/activity/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/utils/FloatWindowHelper;->showFloatWindow(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/luckymoney/ui/activity/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/utils/FloatWindowHelper;->removeFloatWindow(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->postBgChangedDelay()V

    return-void
.end method

.method public startActivitybyComponent(Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/luckymoney/utils/PackageUtil;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/miui/luckymoney/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startCmdLuckyActivity()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mAppContext:Landroid/content/Context;

    const v1, 0x7f070181

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->wechatConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->componentNames:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->startActivitybyComponent(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public startShoopAgainActivity()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->mAppContext:Landroid/content/Context;

    const v1, 0x7f070180

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->alipayConfig:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->componentNames:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->startActivitybyComponent(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

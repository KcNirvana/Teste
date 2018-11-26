.class public Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_OVERFLOW:I = 0x2

.field public static final STATUS_WARNING:I = 0x1


# instance fields
.field private mBillLayout:Landroid/view/View;

.field private mBillRemainedTextView:Landroid/widget/TextView;

.field private mBillRemainedUnitTextView:Landroid/widget/TextView;

.field private mButtonAdjustUsage:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mHasLeisure:Z

.field private mLeisureTrafficLayout:Landroid/view/View;

.field private mLeisureTrafficRemainedView:Landroid/widget/TextView;

.field private mLeisureTrafficUnit:Landroid/widget/TextView;

.field private mMainBillRemainTextView:Landroid/widget/TextView;

.field private mMainMonthPackageTextView:Landroid/widget/TextView;

.field private mMainTodayUsedTextView:Landroid/widget/TextView;

.field private mMonthPackageTextView:Landroid/widget/TextView;

.field private mMonthRemainedView:Landroid/widget/TextView;

.field private mMonthUsedText:Landroid/widget/TextView;

.field private mMonthUsedUnit:Landroid/widget/TextView;

.field private mPackageUsedView:Landroid/view/View;

.field private mPreAdjustTimeTextView:Landroid/widget/TextView;

.field private mPrimaryTextLayout:Landroid/view/View;

.field private mSimNotInsertedView:Landroid/widget/TextView;

.field private mSplitView:Landroid/view/View;

.field private mTextPrimaryTextView:Landroid/widget/TextView;

.field private mTodayUsedTextUnit:Landroid/widget/TextView;

.field private mTodayUsedTextView:Landroid/widget/TextView;

.field private mUnitTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f03018f

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    const v2, 0x7f0a03ee

    const v0, 0x7f0a01dc

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TypefaceHelper;->getMiuiThinTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a03fa

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTextPrimaryTextView:Landroid/widget/TextView;

    const v0, 0x7f0a02bf

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0400

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPackageUsedView:Landroid/view/View;

    const v0, 0x7f0a03e8

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTodayUsedTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03e9

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTodayUsedTextUnit:Landroid/widget/TextView;

    const v0, 0x7f0a03ec

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03ed

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthUsedUnit:Landroid/widget/TextView;

    const v0, 0x7f0a03ef

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mLeisureTrafficLayout:Landroid/view/View;

    const v0, 0x7f0a03f0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mLeisureTrafficRemainedView:Landroid/widget/TextView;

    const v0, 0x7f0a03f1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mLeisureTrafficUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPackageUsedView:Landroid/view/View;

    const v1, 0x7f0a03f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillLayout:Landroid/view/View;

    const v0, 0x7f0a03f3

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03f4

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedUnitTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthUsedText:Landroid/widget/TextView;

    const v0, 0x7f0a03ff

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Landroid/widget/Button;

    const v0, 0x7f0a03fe

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSimNotInsertedView:Landroid/widget/TextView;

    const v0, 0x7f0a03f9

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPrimaryTextLayout:Landroid/view/View;

    const v0, 0x7f0a03fd

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03fc

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mErrorTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03fb

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSplitView:Landroid/view/View;

    const v0, 0x7f0a03ea

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainTodayUsedTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03f5

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainBillRemainTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainMonthPackageTextView:Landroid/widget/TextView;

    return-void
.end method

.method private updatePrimaryMessage(JJFZ)V
    .locals 3

    if-nez p6, :cond_0

    const v0, 0x7f070200

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mHasLeisure:Z

    if-eqz v0, :cond_3

    long-to-float v0, p1

    long-to-float v1, p3

    mul-float/2addr v1, p5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const v0, 0x7f0701eb

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    const v0, 0x7f0701ec

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0701ed

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    goto :goto_0

    :cond_3
    long-to-float v0, p1

    long-to-float v1, p3

    mul-float/2addr v1, p5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const v0, 0x7f0701e8

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    goto :goto_0

    :cond_4
    cmp-long v0, p1, p3

    if-gez v0, :cond_5

    const v0, 0x7f0701e9

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0701ea

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public setBillLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBillLayoutVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setBillRemainedTextView(J)V
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/TypefaceHelper;->getMiuiTypefaceForNA(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedUnitTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setDataUsageButtonEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setDataUsageButtonText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setDataUsageButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDataUsageButtonVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDataUsageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDataUsageLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setErrorTextVisibility(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSplitView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSplitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSplitView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFormattingTextView(Landroid/widget/TextView;Landroid/widget/TextView;J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TypefaceHelper;->getMiuiTypefaceForNA(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHasLeisure(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mHasLeisure:Z

    return-void
.end method

.method public setLeisureTrafficRemained(ZJ)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mLeisureTrafficLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mLeisureTrafficRemainedView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mLeisureTrafficUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setFormattingTextView(Landroid/widget/TextView;Landroid/widget/TextView;J)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setMainBillRemainTextView(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainBillRemainTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMainBottomViewVisible(Z)V
    .locals 0

    return-void
.end method

.method public setMainButtonBg(I)V
    .locals 4

    const v1, 0x7f0800f8

    const v0, 0x7f0800e6

    const v2, 0x7f020285

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTextPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSplitView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :pswitch_1
    const v2, 0x7f020283

    const v1, 0x7f0800fa

    const v0, 0x7f0800e8

    goto :goto_0

    :pswitch_2
    const v2, 0x7f020288

    const v1, 0x7f0800f9

    const v0, 0x7f0800e7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setMainMonthPackageTextView(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainMonthPackageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMainTodayUsedTextView(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainTodayUsedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMonthPackage(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthUsedUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setFormattingTextView(Landroid/widget/TextView;Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method public setMonthPackageInfo(JJFZ)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    sub-long v0, p3, p1

    cmp-long v2, p3, v6

    if-ltz v2, :cond_1

    cmp-long v2, p1, v6

    if-ltz v2, :cond_1

    if-eqz p6, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthUsedUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setFormattingTextView(Landroid/widget/TextView;Landroid/widget/TextView;J)V

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->updatePrimaryMessage(JJFZ)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    const v3, 0x4182b852    # 16.34f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    const v3, 0x7f0701f4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthUsedUnit:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setMonthPackageViewVisible(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainMonthPackageTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setMonthRemain(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move-wide p1, v0

    goto :goto_0
.end method

.method public setMonthRemainedClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMonthRemainedViewVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setMonthUsedText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthUsedText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setPreAdjustTime(J)V
    .locals 5

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSplitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, p1, p2, v2, v3}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getPreAdjustTimeTips(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setPrimaryTextLayoutVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPrimaryTextLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSimCardAddedInfo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSimNotInsertedView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSimNotInsertedView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSimNotInsertedVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSimNotInsertedView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTodayUsed(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTodayUsedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTodayUsedTextUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setFormattingTextView(Landroid/widget/TextView;Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method public setUnitTextViewVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setUnlimitedMonthPackageInfo(JLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    const v1, 0x4182b852    # 16.34f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthUsedUnit:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070200

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    return-void
.end method

.method public setmTextPrimaryTextView(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTextPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showPrimaryMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTextPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

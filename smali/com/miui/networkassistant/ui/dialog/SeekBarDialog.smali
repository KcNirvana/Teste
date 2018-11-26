.class public Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;
.super Lcom/miui/common/a/a/b;
.source ""


# static fields
.field private static final SEEK_BAR_RANGE_MAX:I = 0x64

.field private static final SEEK_BAR_RANGE_MIN:I = 0x3c


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMonthTotal:J

.field private mPercent:F

.field private mPercentTextView:Landroid/widget/TextView;

.field private mRealValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

.field private mWarnTraffic:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;)Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBarChangeListener:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mRealValue:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->getReallySeekBarValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->updateData(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBarChangeListener:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBarChangeListener:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

    return-void
.end method

.method private getReallySeekBarValue(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x28

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a0352

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercentTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0353

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mWarnTraffic:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;-><init>(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method

.method private loadData()V
    .locals 4

    const/high16 v3, 0x42c80000    # 100.0f

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercent:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mRealValue:I

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mRealValue:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->updateData(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercent:F

    mul-float/2addr v1, v3

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x42200000    # 40.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private updateData(I)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mWarnTraffic:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0701dd

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mMonthTotal:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mWarnTraffic:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildDateDialog(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->showDialog()V

    return-void
.end method

.method protected getNegativeButtonText()I
    .locals 1

    const v0, 0x7f070238

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    const v0, 0x7f070239

    return v0
.end method

.method protected onBuild(Landroid/app/AlertDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030129

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->initView(Landroid/view/View;)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBarChangeListener:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mRealValue:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v1, v2

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;->onSeekBarChanged(F)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public setData(JF)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mMonthTotal:J

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercent:F

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->loadData()V

    return-void
.end method

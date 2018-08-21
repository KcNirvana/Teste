.class public Lcom/alipay/android/app/template/YearMonthPicker;
.super Landroid/widget/RelativeLayout;
.source "YearMonthPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;
    }
.end annotation


# instance fields
.field protected final REP_DELAY:I

.field private mCurrentYear:I

.field private mEnableBeforeYear:Z

.field private mIsRptDecrement:Z

.field private mIsRptIncrement:Z

.field private mIsRptMonth:Z

.field private mIsRptYear:Z

.field protected maxYear:I

.field protected minYear:I

.field protected monthDownBtn:Landroid/widget/Button;

.field protected monthEditText:Landroid/widget/TextView;

.field protected monthUpBtn:Landroid/widget/Button;

.field protected rptUpdateHandler:Landroid/os/Handler;

.field protected yearDownBtn:Landroid/widget/Button;

.field protected yearEditText:Landroid/widget/TextView;

.field protected yearUpBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->REP_DELAY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mEnableBeforeYear:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptIncrement:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptDecrement:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptYear:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptMonth:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->REP_DELAY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mEnableBeforeYear:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptIncrement:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptDecrement:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptYear:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptMonth:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "alipay_template_year_month_picker"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/template/YearMonthPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptYear:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/template/YearMonthPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptYear:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/template/YearMonthPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptMonth:Z

    return v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/template/YearMonthPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptMonth:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/template/YearMonthPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptIncrement:Z

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/android/app/template/YearMonthPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptIncrement:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/android/app/template/YearMonthPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptDecrement:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/template/YearMonthPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mIsRptDecrement:Z

    return p1
.end method

.method private addMonthPrefix(I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-le p1, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public decrement(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->decrementYear()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->decrementMonth()V

    goto :goto_0
.end method

.method protected decrementMonth()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0xc

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->addMonthPrefix(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected decrementYear()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->minYear:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->maxYear:I

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public disableBeforeYear()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mEnableBeforeYear:Z

    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->minYear:I

    iget v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mCurrentYear:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mCurrentYear:I

    :goto_0
    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->minYear:I

    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->minYear:I

    goto :goto_0
.end method

.method public enableBeforeYear()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mEnableBeforeYear:Z

    return-void
.end method

.method public getMonth()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMonthStr(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getYear()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected increment(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->incrementYear()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->incrementMonth()V

    goto :goto_0
.end method

.method protected incrementMonth()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->addMonthPrefix(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected incrementYear()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->maxYear:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->minYear:I

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const-string/jumbo v0, "year_up_btn"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearUpBtn:Landroid/widget/Button;

    const-string/jumbo v0, "year_down_btn"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearDownBtn:Landroid/widget/Button;

    const-string/jumbo v0, "year_text"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    const-string/jumbo v0, "month_up_btn"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthUpBtn:Landroid/widget/Button;

    const-string/jumbo v0, "month_down_btn"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthDownBtn:Landroid/widget/Button;

    const-string/jumbo v0, "month_text"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearUpBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v2}, Lcom/alipay/android/app/template/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearDownBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/template/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthUpBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/template/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthDownBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/android/app/template/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->setDefaultYearLimit()V

    return-void
.end method

.method protected setButtonAction(Landroid/widget/Button;ZZ)V
    .locals 1

    new-instance v0, Lcom/alipay/android/app/template/YearMonthPicker$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/alipay/android/app/template/YearMonthPicker$1;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/android/app/template/YearMonthPicker$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/alipay/android/app/template/YearMonthPicker$2;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Lcom/alipay/android/app/template/YearMonthPicker$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/YearMonthPicker$3;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setCurrentDate()V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->setYearMonth(II)V

    return-void
.end method

.method protected setDefaultYearLimit()V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mCurrentYear:I

    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mCurrentYear:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->minYear:I

    add-int/lit8 v0, v0, 0x63

    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->maxYear:I

    return-void
.end method

.method public setMaxYear(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->maxYear:I

    return-void
.end method

.method public setMinYear(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mEnableBeforeYear:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->mCurrentYear:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->minYear:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->minYear:I

    goto :goto_0
.end method

.method public setYearMonth(II)V
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->maxYear:I

    iget v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->minYear:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/alipay/android/app/template/YearMonthPicker;->addMonthPrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

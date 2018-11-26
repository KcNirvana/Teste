.class public Lcom/miui/powercenter/autotask/DayTimePicker;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private aKp:Landroid/widget/TextView;

.field private aKq:Landroid/widget/TextView;

.field private aKr:Lmiui/widget/TimePicker;

.field private aKs:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/DayTimePicker;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/DayTimePicker;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/DayTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030110

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/DayTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/DayTimePicker;->aKs:Landroid/widget/TextView;

    const v0, 0x7f0a032c

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/DayTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/DayTimePicker;->aKp:Landroid/widget/TextView;

    const v0, 0x7f0a032d

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/DayTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/DayTimePicker;->aKq:Landroid/widget/TextView;

    const v0, 0x7f0a032e

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/DayTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/TimePicker;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/DayTimePicker;->aKr:Lmiui/widget/TimePicker;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/DayTimePicker;->aKr:Lmiui/widget/TimePicker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public aVm(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/DayTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/DayTimePicker;->aVn(Ljava/lang/String;)V

    return-void
.end method

.method public aVn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/DayTimePicker;->aKp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public aVo(Lmiui/widget/TimePicker$OnTimeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/DayTimePicker;->aKr:Lmiui/widget/TimePicker;

    invoke-virtual {v0, p1}, Lmiui/widget/TimePicker;->setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public aVp(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/DayTimePicker;->aKr:Lmiui/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/DayTimePicker;->aKr:Lmiui/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/DayTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/DayTimePicker;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/DayTimePicker;->aKs:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

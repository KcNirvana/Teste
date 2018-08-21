.class public Lcom/miui/payment/ui/view/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "DateTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private mCalendar:Lmiui/date/Calendar;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeListener:Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;

.field private mTimePicker:Lmiui/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;-><init>(Landroid/content/Context;Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTimeListener:Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;

    invoke-direct {p0, p3}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->init(I)V

    const v0, 0x1b0b02f9

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->setTitle(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/view/DateTimePickerDialog;)Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTimeListener:Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/payment/ui/view/DateTimePickerDialog;)Lmiui/widget/DateTimePicker;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/payment/ui/view/DateTimePickerDialog;)Lmiui/date/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mCalendar:Lmiui/date/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/payment/ui/view/DateTimePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->updateTime()V

    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x38c

    invoke-static {p1, p2, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/miui/payment/ui/view/DateTimePickerDialog$1;

    invoke-direct {v5, p0}, Lcom/miui/payment/ui/view/DateTimePickerDialog$1;-><init>(Lcom/miui/payment/ui/view/DateTimePickerDialog;)V

    invoke-virtual {p0, v2, v4, v5}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v4, -0x2

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x1040000

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v2}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lmiui/date/Calendar;

    invoke-direct {v2}, Lmiui/date/Calendar;-><init>()V

    iput-object v2, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x1b0400d9

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->setView(Landroid/view/View;)V

    const v2, 0x1b090317

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTextView:Landroid/widget/TextView;

    const v2, 0x1b090318

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/DateTimePicker;

    iput-object v2, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    iget-object v2, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v2, p1}, Lmiui/widget/DateTimePicker;->setMinuteInterval(I)V

    iget-object v2, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    new-instance v3, Lcom/miui/payment/ui/view/DateTimePickerDialog$2;

    invoke-direct {v3, p0}, Lcom/miui/payment/ui/view/DateTimePickerDialog$2;-><init>(Lcom/miui/payment/ui/view/DateTimePickerDialog;)V

    invoke-virtual {v2, v3}, Lmiui/widget/DateTimePicker;->setOnTimeChangedListener(Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;)V

    invoke-direct {p0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->updateTime()V

    return-void
.end method

.method private updateTime()V
    .locals 4

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMaxDateTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->setMaxDateTime(J)V

    return-void
.end method

.method public setMinDateTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->setMinDateTime(J)V

    return-void
.end method

.method public update(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->update(J)V

    return-void
.end method

.class public Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;
.super Lcom/miui/common/a/a/b;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mActionFlag:I

.field private mHint:Ljava/lang/String;

.field private mInpuText:Landroid/widget/EditText;

.field private mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

.field private mInputTraffic:J

.field private mInputWatcher:Landroid/text/TextWatcher;

.field private mMaxValue:J

.field private mOkButton:Landroid/widget/Button;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mProperValue:D

.field private mTrafficUnits:J


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->setProperInputValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    const-string/jumbo v0, "^\\d+\\.?\\d*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mPattern:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$1;-><init>(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    const v0, 0x7f0a0402

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficUnitArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mActivity:Landroid/app/Activity;

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setProperInputValue(Ljava/lang/String;)V
    .locals 12

    const/4 v7, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mTrafficUnits:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mProperValue:D

    cmpg-double v0, v0, v8

    if-gez v0, :cond_1

    const-string/jumbo v0, "%.02f"

    new-array v1, v6, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mProperValue:D

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "%d"

    new-array v1, v6, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mProperValue:D

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mActionFlag:I

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mHint:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->showDialog()V

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->refreshHintTxt(Ljava/lang/String;)V

    return-void
.end method

.method public clearInputText()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

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
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030195

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->initView(Landroid/view/View;)V

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isCNLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mHint:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2;-><init>(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$3;-><init>(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mTrafficUnits:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputTraffic:J

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputTraffic:J

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mActionFlag:I

    invoke-interface {v0, v2, v3, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;->onTrafficUpdated(JI)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->setProperInputValue(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mTrafficUnits:J

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    long-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mProperValue:D

    goto :goto_0

    :pswitch_1
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mTrafficUnits:J

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    long-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mProperValue:D

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mOkButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public refreshHintTxt(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isCNLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public setMaxValue(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    return-void
.end method

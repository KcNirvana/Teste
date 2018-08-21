.class public Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;
.super Landroid/app/AlertDialog;
.source "FlybirdDialogDoubleBtn.java"


# instance fields
.field private mLastOnClickTime:J

.field private mLeftBtn:Landroid/widget/Button;

.field private mLeftText:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mOnLeftClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnRightClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRightBtn:Landroid/widget/Button;

.field private mRightText:Ljava/lang/String;

.field private mTxtMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mLastOnClickTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;J)J
    .locals 1

    iput-wide p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mLastOnClickTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mOnLeftClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->dismissFlybirdDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mOnRightClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private dismissFlybirdDialog()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initializeView()V
    .locals 1

    const-string/jumbo v0, "flybird_dialog_double_btn_text"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mTxtMessage:Landroid/widget/TextView;

    const-string/jumbo v0, "flybird_dialog_double_left_btn"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mLeftBtn:Landroid/widget/Button;

    const-string/jumbo v0, "flybird_dialog_double_right_btn"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mRightBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setOneMessage()V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setLeftOnClickText()V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setLeftOnClickListener()V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setRightOnClickText()V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setRightOnClickListener()V

    return-void
.end method

.method private setLeftOnClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mLeftBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mLeftBtn:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn$1;-><init>(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setLeftOnClickText()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mLeftBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mLeftBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mLeftBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mLeftText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setOneMessage()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mTxtMessage:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mTxtMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRightOnClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mRightBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mRightBtn:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn$2;-><init>(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setRightOnClickText()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mRightBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mRightBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mRightText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v0, "flybird_dialog_double_btn"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setContentView(I)V

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->initializeView()V

    return-void
.end method

.method public setLeftOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mOnLeftClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setLeftOnClickListener()V

    return-void
.end method

.method public setLeftOnClickText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mLeftText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setLeftOnClickText()V

    return-void
.end method

.method public setOneMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setOneMessage()V

    return-void
.end method

.method public setRightOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mOnRightClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setRightOnClickListener()V

    return-void
.end method

.method public setRightOnClickText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->mRightText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setRightOnClickText()V

    return-void
.end method

.class public Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;
.super Landroid/app/AlertDialog;
.source "FlybirdDialogMultiBtn.java"


# instance fields
.field private mBtns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOnClickTime:J

.field private mMessage:Ljava/lang/String;

.field private mTxtMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mLastOnClickTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;J)J
    .locals 1

    iput-wide p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mLastOnClickTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->dismissFlybirdDialog()V

    return-void
.end method

.method private dismissFlybirdDialog()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->dismiss()V
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
    .locals 4

    const-string/jumbo v0, "flybird_dialog_multi_btn_text"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mTxtMessage:Landroid/widget/TextView;

    const-string/jumbo v0, "flybird_dialog_multi_btn0"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string/jumbo v1, "flybird_dialog_multi_btn1"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string/jumbo v2, "flybird_dialog_multi_btn2"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mBtns:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mBtns:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mBtns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mBtns:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->setOneMessage()V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->setOnClickEvents()V

    return-void
.end method

.method private setOnClickEvent(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;Landroid/widget/Button;I)V
    .locals 2

    iget-boolean v0, p1, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mIsCancel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;-><init>(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;I)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOnClickEvents()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mEvents:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mBtns:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mBtns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mEvents:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mBtns:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->setOnClickEvent(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;Landroid/widget/Button;I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private setOneMessage()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mTxtMessage:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mTxtMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v0, "flybird_dialog_multi_btn"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->setContentView(I)V

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->initializeView()V

    return-void
.end method

.method public setOnClickEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mEvents:Ljava/util/List;

    return-void
.end method

.method public setOneMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->mMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->setOneMessage()V

    return-void
.end method

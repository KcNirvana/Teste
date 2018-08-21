.class public Lcom/alipay/android/app/hardwarepay/base/d;
.super Ljava/lang/Object;
.source "HardwarePayValidateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/hardwarepay/base/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/alipay/android/app/hardwarepay/base/d$a;

.field private c:Landroid/app/Dialog;

.field private d:Z

.field private e:Z

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->l:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->b:Lcom/alipay/android/app/hardwarepay/base/d$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/base/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/android/app/hardwarepay/base/d;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/hardwarepay/base/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/alipay/android/app/hardwarepay/base/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/hardwarepay/base/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->l:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/hardwarepay/base/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->d:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/app/hardwarepay/base/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->e:Z

    return v0
.end method

.method static synthetic g(Lcom/alipay/android/app/hardwarepay/base/d;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->g:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/app/hardwarepay/base/d;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/app/hardwarepay/base/d;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/android/app/hardwarepay/base/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/android/app/hardwarepay/base/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->k:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;Lcom/alipay/android/app/hardwarepay/base/d$a;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/base/d;->b:Lcom/alipay/android/app/hardwarepay/base/d$a;

    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->l:Z

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "flybird_hdpay_dialog_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocusFromTouch()Z

    const-string/jumbo v1, "alipay_msp_hd_dialog_tips"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    const-string/jumbo v1, "alipay_msp_hd_dialog_icon"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->f:Landroid/widget/ImageView;

    const-string/jumbo v1, "alipay_msp_hd_dialog_spliter"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->j:Landroid/view/View;

    const-string/jumbo v1, "alipay_msp_hd_dialog_divider"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->k:Landroid/view/View;

    const-string/jumbo v1, "alipay_msp_hd_dialog_loading"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->g:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    const-string/jumbo v1, "alipay_msp_hd_dialog_cancel"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->h:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/android/app/hardwarepay/base/e;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/hardwarepay/base/e;-><init>(Lcom/alipay/android/app/hardwarepay/base/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->e:Z

    const-string/jumbo v1, "alipay_msp_hd_dialog_pwd"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->i:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/android/app/hardwarepay/base/f;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/hardwarepay/base/f;-><init>(Lcom/alipay/android/app/hardwarepay/base/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sparse-switch p2, :sswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/base/g;-><init>(Lcom/alipay/android/app/hardwarepay/base/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/base/h;-><init>(Lcom/alipay/android/app/hardwarepay/base/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "HardwarePayValidateDialog.showDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HardwarePayValidateDialog hardwarePayType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->f:Landroid/widget/ImageView;

    const-string/jumbo v2, "alipay_msp_mini_finger"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    const-string/jumbo v2, "flybird_fp_tips"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->f:Landroid/widget/ImageView;

    const-string/jumbo v2, "mini_bracelet"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->f:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->g:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->g:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->spin()V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->g:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->start()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    const-string/jumbo v2, "flybird_bl_tips"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :sswitch_2
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->f:Landroid/widget/ImageView;

    const-string/jumbo v2, "alipay_msp_mini_finger"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->i:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->k:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    const-string/jumbo v2, "flybird_fp_open"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->m:Z

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/l;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/base/l;-><init>(Lcom/alipay/android/app/hardwarepay/base/d;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/i;

    invoke-direct {v1, p0, p1, p3}, Lcom/alipay/android/app/hardwarepay/base/i;-><init>(Lcom/alipay/android/app/hardwarepay/base/d;Ljava/lang/String;I)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/base/d;->d:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->d:Z

    return v0
.end method

.method public d()V
    .locals 11

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x41000000    # -0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->g:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->g:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/base/j;-><init>(Lcom/alipay/android/app/hardwarepay/base/d;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->h:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->i:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/d;->h:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/base/k;-><init>(Lcom/alipay/android/app/hardwarepay/base/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

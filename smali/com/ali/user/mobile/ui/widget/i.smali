.class public Lcom/ali/user/mobile/ui/widget/i;
.super Landroid/app/Dialog;
.source "APNoticePopDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/ui/widget/i$a;,
        Lcom/ali/user/mobile/ui/widget/i$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/ali/user/mobile/ui/widget/APTextView;

.field private g:Lcom/ali/user/mobile/ui/widget/APTextView;

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:Lcom/ali/user/mobile/ui/widget/i$b;

.field private k:Lcom/ali/user/mobile/ui/widget/i$a;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/ui/widget/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$style;->alipay_dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/i;->p:Z

    invoke-direct/range {p0 .. p6}, Lcom/ali/user/mobile/ui/widget/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 1

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/ali/user/mobile/ui/widget/i;)Lcom/ali/user/mobile/ui/widget/i$a;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->k:Lcom/ali/user/mobile/ui/widget/i$a;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/i;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->d:Landroid/widget/Button;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/j;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/j;-><init>(Lcom/ali/user/mobile/ui/widget/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->e:Landroid/widget/Button;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/k;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/k;-><init>(Lcom/ali/user/mobile/ui/widget/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ali/user/mobile/ui/widget/i;->h:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/ali/user/mobile/ui/widget/i;->i:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/ali/user/mobile/ui/widget/i;->l:Ljava/lang/String;

    iput-object p5, p0, Lcom/ali/user/mobile/ui/widget/i;->m:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->b:Landroid/view/LayoutInflater;

    iput-boolean p6, p0, Lcom/ali/user/mobile/ui/widget/i;->p:Z

    return-void
.end method

.method private a(Lcom/ali/user/mobile/ui/widget/APTextView;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/ui/widget/APTextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/ui/widget/APTextView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Lcom/ali/user/mobile/ui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ali/user/mobile/ui/widget/i;)Lcom/ali/user/mobile/ui/widget/i$b;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->j:Lcom/ali/user/mobile/ui/widget/i$b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ali/user/mobile/ui/widget/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/i;->k:Lcom/ali/user/mobile/ui/widget/i$a;

    return-void
.end method

.method public a(Lcom/ali/user/mobile/ui/widget/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/i;->j:Lcom/ali/user/mobile/ui/widget/i$b;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_notice_dialog_pop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->c:Landroid/view/View;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->ensure:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->c:Landroid/view/View;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->c:Landroid/view/View;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->titleTip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->f:Lcom/ali/user/mobile/ui/widget/APTextView;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->c:Landroid/view/View;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->g:Lcom/ali/user/mobile/ui/widget/APTextView;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->c:Landroid/view/View;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->button_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->c:Landroid/view/View;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->dialog_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->f:Lcom/ali/user/mobile/ui/widget/APTextView;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/i;->h:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/ui/widget/i;->a(Lcom/ali/user/mobile/ui/widget/APTextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->g:Lcom/ali/user/mobile/ui/widget/APTextView;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/i;->i:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/ui/widget/i;->a(Lcom/ali/user/mobile/ui/widget/APTextView;Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/i;->p:Z

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/i;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/i;->a()V

    return-void
.end method

.method public show()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/i;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/i;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/i;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_notice_dialog_width_margin_window:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/i;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

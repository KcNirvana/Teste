.class public Lcom/ali/user/mobile/ui/widget/c;
.super Landroid/app/AlertDialog;
.source "APGenericProgressDialog.java"


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/CharSequence;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 3

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/c;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/c;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/c;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/c;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/c;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/c;->a:Landroid/widget/ProgressBar;

    iget-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/c;->e:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/c;->e:Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/c;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/c;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/c;->d:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_generic_progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/c;->setContentView(I)V

    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/c;->a:Landroid/widget/ProgressBar;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/c;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/c;->a()V

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/c;->d:Z

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/c;->b(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/c;->c:Ljava/lang/CharSequence;

    return-void
.end method

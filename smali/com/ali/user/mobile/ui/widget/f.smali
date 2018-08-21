.class public Lcom/ali/user/mobile/ui/widget/f;
.super Landroid/app/Dialog;
.source "APNormalPopDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/ui/widget/f$a;,
        Lcom/ali/user/mobile/ui/widget/f$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/ali/user/mobile/ui/widget/f$b;

.field private n:Lcom/ali/user/mobile/ui/widget/f$a;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/content/res/ColorStateList;

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$style;->alipay_dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/f;->r:I

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ali/user/mobile/ui/widget/f;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/ui/widget/f;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/mobile/ui/widget/f;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->e:Landroid/widget/Button;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/g;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/g;-><init>(Lcom/ali/user/mobile/ui/widget/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->f:Landroid/widget/Button;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/h;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/h;-><init>(Lcom/ali/user/mobile/ui/widget/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->f:Landroid/widget/Button;

    return-object v0
.end method

.method public a(Lcom/ali/user/mobile/ui/widget/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/f;->n:Lcom/ali/user/mobile/ui/widget/f$a;

    return-void
.end method

.method public a(Lcom/ali/user/mobile/ui/widget/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/f;->m:Lcom/ali/user/mobile/ui/widget/f$b;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_dialog_normal_pop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/f;->c:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->ensure:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->f:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->e:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleTip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->g:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->subTitleTip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->h:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->i:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->image_info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/f;->o:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/ui/widget/f;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->e:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/f;->p:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/ui/widget/f;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->f:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->q:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/f;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/f;->r:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/f;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/ui/widget/f;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/f;->b()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public show()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/f;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$color;->alipay_transparent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

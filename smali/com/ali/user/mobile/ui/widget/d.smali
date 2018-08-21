.class public Lcom/ali/user/mobile/ui/widget/d;
.super Landroid/app/Dialog;
.source "APListPopDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/ui/widget/d$c;,
        Lcom/ali/user/mobile/ui/widget/d$a;,
        Lcom/ali/user/mobile/ui/widget/d$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/content/Context;

.field private c:Lcom/ali/user/mobile/ui/widget/d$b;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ali/user/mobile/ui/widget/aq;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private final f:Landroid/view/LayoutInflater;

.field private g:Ljava/lang/String;

.field private h:Lcom/ali/user/mobile/ui/widget/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/ali/user/mobile/security/ui/R$style;->alipay_dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->d:Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/d;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->f:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_list_dialog_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/d;->a:I

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/d;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/ali/user/mobile/ui/widget/aq;

    invoke-direct {v3, v0}, Lcom/ali/user/mobile/ui/widget/aq;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ali/user/mobile/ui/widget/aq;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/ali/user/mobile/security/ui/R$style;->alipay_dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->d:Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/d;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/ui/widget/d;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->f:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_list_dialog_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/d;->a:I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/ali/user/mobile/ui/widget/d;->d:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private a()I
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/d;->a:I

    add-int/lit8 v0, v0, 0x5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/d;->a:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
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

.method static synthetic a(Lcom/ali/user/mobile/ui/widget/d;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_list_dialog_is_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/widget/ImageView;Lcom/ali/user/mobile/ui/widget/aq;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/ali/user/mobile/ui/widget/aq;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/ali/user/mobile/ui/widget/aq;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ali/user/mobile/ui/widget/d;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/d;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic a(Lcom/ali/user/mobile/ui/widget/d;Landroid/widget/ImageView;Lcom/ali/user/mobile/ui/widget/aq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/d;->a(Landroid/widget/ImageView;Lcom/ali/user/mobile/ui/widget/aq;)V

    return-void
.end method

.method static synthetic b(Lcom/ali/user/mobile/ui/widget/d;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ali/user/mobile/ui/widget/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/d;->c:Lcom/ali/user/mobile/ui/widget/d$b;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_list_dialog_pop:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/d;->e:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->dialog_listView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/ali/user/mobile/ui/widget/d$a;

    invoke-direct {v2, p0, v4}, Lcom/ali/user/mobile/ui/widget/d$a;-><init>(Lcom/ali/user/mobile/ui/widget/d;Lcom/ali/user/mobile/ui/widget/e;)V

    iput-object v2, p0, Lcom/ali/user/mobile/ui/widget/d;->h:Lcom/ali/user/mobile/ui/widget/d$a;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/d;->h:Lcom/ali/user/mobile/ui/widget/d$a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->list_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/d;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->list_title_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, Lcom/ali/user/mobile/ui/widget/l;->a()V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->c:Lcom/ali/user/mobile/ui/widget/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->c:Lcom/ali/user/mobile/ui/widget/d$b;

    invoke-interface {v0, p3}, Lcom/ali/user/mobile/ui/widget/d$b;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/d;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/d;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/d;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_notice_dialog_width_margin_window:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/d;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/d;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

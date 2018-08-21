.class public Lcom/ali/user/mobile/ui/widget/ad;
.super Landroid/app/Dialog;
.source "AUNetworkPopDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$style;->alipay_dialog_with_no_title_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/ad;->b:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/ad;->a:Landroid/content/Context;

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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ad;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_dialog_network:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/ad;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ad;->c:Landroid/view/View;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->closeIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/ae;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/ae;-><init>(Lcom/ali/user/mobile/ui/widget/ad;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ad;->c:Landroid/view/View;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/af;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/af;-><init>(Lcom/ali/user/mobile/ui/widget/ad;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/ad;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public show()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ad;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/ad;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/ad;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ad;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/ad;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/ad;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_dp_60:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/ad;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

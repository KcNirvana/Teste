.class final Lcom/ali/user/mobile/ui/widget/d$a;
.super Landroid/widget/BaseAdapter;
.source "APListPopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/mobile/ui/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/d;


# direct methods
.method private constructor <init>(Lcom/ali/user/mobile/ui/widget/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/d$a;->a:Lcom/ali/user/mobile/ui/widget/d;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ali/user/mobile/ui/widget/d;Lcom/ali/user/mobile/ui/widget/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/d$a;-><init>(Lcom/ali/user/mobile/ui/widget/d;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d$a;->a:Lcom/ali/user/mobile/ui/widget/d;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/d;->a(Lcom/ali/user/mobile/ui/widget/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d$a;->a:Lcom/ali/user/mobile/ui/widget/d;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/d;->a(Lcom/ali/user/mobile/ui/widget/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d$a;->a:Lcom/ali/user/mobile/ui/widget/d;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/d;->b(Lcom/ali/user/mobile/ui/widget/d;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_list_item_dialog:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ali/user/mobile/ui/widget/d$c;

    invoke-direct {v1, v2}, Lcom/ali/user/mobile/ui/widget/d$c;-><init>(Lcom/ali/user/mobile/ui/widget/e;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ali/user/mobile/ui/widget/d$c;->b:Landroid/widget/ImageView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->item_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ali/user/mobile/ui/widget/d$c;->a:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->item_state:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ali/user/mobile/ui/widget/d$c;->d:Landroid/widget/ImageView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->item_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/ali/user/mobile/ui/widget/d$c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d$a;->a:Lcom/ali/user/mobile/ui/widget/d;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/d;->a(Lcom/ali/user/mobile/ui/widget/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/aq;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/d$c;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/ali/user/mobile/ui/widget/d$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/aq;->a()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/d$a;->a:Lcom/ali/user/mobile/ui/widget/d;

    iget-object v3, v1, Lcom/ali/user/mobile/ui/widget/d$c;->b:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/ui/widget/d;->a(Lcom/ali/user/mobile/ui/widget/d;Landroid/widget/ImageView;Lcom/ali/user/mobile/ui/widget/aq;)V

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/d$a;->a:Lcom/ali/user/mobile/ui/widget/d;

    iget-object v1, v1, Lcom/ali/user/mobile/ui/widget/d$c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/aq;->d()I

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/ali/user/mobile/ui/widget/d;->a(Lcom/ali/user/mobile/ui/widget/d;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/d$a;->a:Lcom/ali/user/mobile/ui/widget/d;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/d;->a(Lcom/ali/user/mobile/ui/widget/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_list_dialog_item_bottom_bg_selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

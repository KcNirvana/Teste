.class public Lcom/miui/antivirus/ui/WifiResultView;
.super Lcom/miui/antivirus/ui/g;
.source ""


# instance fields
.field private apI:Landroid/widget/LinearLayout;

.field private apJ:Landroid/widget/ImageView;

.field private apK:Landroid/widget/LinearLayout;

.field private apL:Landroid/widget/ImageView;

.field private apM:Landroid/widget/LinearLayout;

.field private apN:Landroid/widget/ImageView;

.field private apO:Landroid/widget/LinearLayout;

.field private apP:Landroid/widget/ImageView;

.field private apQ:Landroid/widget/LinearLayout;

.field private apR:Landroid/widget/ImageView;

.field private apS:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/ui/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public awj(Lcom/miui/antivirus/model/d;)V
    .locals 4

    const v3, 0x7f020315

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->ark()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apK:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apL:Landroid/widget/ImageView;

    const v2, 0x7f020317

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->isEncrypted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apO:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apP:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->arh()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apR:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->ari()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apM:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apN:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->arj()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apI:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apJ:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->apS:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->arl()I

    move-result v2

    if-lez v2, :cond_5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_5
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->aqD:Lcom/miui/common/d/f;

    const/16 v1, 0x40f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/common/d/f;->aLg(ILjava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0}, Lcom/miui/antivirus/ui/g;->onFinishInflate()V

    const v0, 0x7f0a0392

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apK:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0394

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apO:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0396

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apQ:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0398

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apM:Landroid/widget/LinearLayout;

    const v0, 0x7f0a039a

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apI:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0393

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apL:Landroid/widget/ImageView;

    const v0, 0x7f0a0395

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apP:Landroid/widget/ImageView;

    const v0, 0x7f0a0397

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apR:Landroid/widget/ImageView;

    const v0, 0x7f0a0399

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apN:Landroid/widget/ImageView;

    const v0, 0x7f0a039b

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apJ:Landroid/widget/ImageView;

    const v0, 0x7f0a038d

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/WifiResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apS:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apK:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apO:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apM:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->apI:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    new-instance v0, Lcom/miui/antivirus/model/g;

    invoke-direct {v0}, Lcom/miui/antivirus/model/g;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/g;->arA(I)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->mContext:Landroid/content/Context;

    const v2, 0x7f070565

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/g;->arB(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/WifiResultView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/miui/antivirus/ui/WifiResultView;->awy(Lcom/miui/antivirus/model/g;Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

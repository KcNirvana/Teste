.class public Lcom/miui/appmanager/model/t;
.super Lcom/miui/appmanager/model/f;
.source ""


# instance fields
.field private aQI:Lcom/miui/appmanager/m;

.field final synthetic aQJ:Lcom/miui/appmanager/model/s;

.field private option:Lcom/nostra13/universalimageloader/core/n;


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/model/s;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/appmanager/model/t;->aQJ:Lcom/miui/appmanager/model/s;

    invoke-direct {p0, p2}, Lcom/miui/appmanager/model/f;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    iput-object v0, p0, Lcom/miui/appmanager/model/t;->option:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {p2, p1}, Lcom/miui/appmanager/j;->bmp(Landroid/view/View;Lcom/miui/appmanager/model/k;)Lcom/miui/appmanager/m;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    return-void
.end method


# virtual methods
.method public bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-boolean v0, v0, Lcom/miui/appmanager/m;->initialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/appmanager/j;->bmt()V

    check-cast p2, Lcom/miui/appmanager/model/s;

    iget-object v0, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v1, p0, Lcom/miui/appmanager/model/t;->aQJ:Lcom/miui/appmanager/model/s;

    invoke-static {v1}, Lcom/miui/appmanager/model/s;->bhT(Lcom/miui/appmanager/model/s;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/appmanager/model/t;->aQJ:Lcom/miui/appmanager/model/s;

    invoke-virtual {v2}, Lcom/miui/appmanager/model/s;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/j;->bmo(Lcom/miui/appmanager/m;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v0, v0, Lcom/miui/appmanager/m;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/appmanager/model/s;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v0, v0, Lcom/miui/appmanager/m;->aUt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/appmanager/model/t;->aQJ:Lcom/miui/appmanager/model/s;

    invoke-virtual {v1}, Lcom/miui/appmanager/model/s;->getCta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/appmanager/model/s;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v0, v0, Lcom/miui/appmanager/m;->summaryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/miui/appmanager/model/s;->getIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v1, v1, Lcom/miui/appmanager/m;->aUu:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/appmanager/model/t;->option:Lcom/nostra13/universalimageloader/core/n;

    const v3, 0x7f0200b2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v1, v1, Lcom/miui/appmanager/m;->aUt:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/appmanager/j;->bmq(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v1, v1, Lcom/miui/appmanager/m;->aUs:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/miui/appmanager/model/t;->aQJ:Lcom/miui/appmanager/model/s;

    invoke-static {v2}, Lcom/miui/appmanager/model/s;->bhT(Lcom/miui/appmanager/model/s;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/appmanager/model/t;->aQJ:Lcom/miui/appmanager/model/s;

    invoke-virtual {v3}, Lcom/miui/appmanager/model/s;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/appmanager/j;->bmv(Landroid/content/Context;Landroid/widget/RelativeLayout;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v0, v0, Lcom/miui/appmanager/m;->closeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v0, v0, Lcom/miui/appmanager/m;->closeView:Landroid/view/View;

    new-instance v1, Lcom/miui/appmanager/model/E;

    invoke-direct {v1, p0, p2}, Lcom/miui/appmanager/model/E;-><init>(Lcom/miui/appmanager/model/t;Lcom/miui/appmanager/model/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v0, v0, Lcom/miui/appmanager/m;->summaryView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/appmanager/model/s;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/appmanager/model/t;->aQI:Lcom/miui/appmanager/m;

    iget-object v0, v0, Lcom/miui/appmanager/m;->summaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

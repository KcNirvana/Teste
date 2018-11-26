.class final Lcom/miui/gamebooster/ui/aI;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic em:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/aI;->em:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lcom/miui/gamebooster/sign/a;->getInstance()Lcom/miui/gamebooster/sign/a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/aI;->em:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gamebooster/sign/a;->ra(Ljava/util/Map;Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/aI;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6

    const v2, 0x7f0a0375

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aI;->em:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bX:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/sign/a;->getInstance()Lcom/miui/gamebooster/sign/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/sign/a;->qV()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aI;->em:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dK(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/aI;->em:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v1}, Lcom/miui/gamebooster/sign/a;->qW()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aI;->em:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dK(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0376

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/aI;->em:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/miui/gamebooster/sign/a;->getInstance()Lcom/miui/gamebooster/sign/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/sign/a;->qW()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/gamebooster/sign/a;->getInstance()Lcom/miui/gamebooster/sign/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gamebooster/sign/a;->qW()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0056

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/aI;->em:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dK(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/aI;->em:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/aI;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.class public Lcom/miui/permcenter/permissions/g;
.super Lcom/miui/permcenter/a;
.source ""


# instance fields
.field private Pt:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f030134

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/g;->Pt:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected bridge synthetic Qf(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    move-object v4, p4

    check-cast v4, Lcom/miui/permcenter/c;

    move-object v5, p5

    check-cast v5, Lcom/miui/permcenter/permissions/h;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/permcenter/permissions/g;->Qu(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/miui/permcenter/c;Lcom/miui/permcenter/permissions/h;)V

    return-void
.end method

.method protected Qu(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/miui/permcenter/c;Lcom/miui/permcenter/permissions/h;)V
    .locals 6

    const-string/jumbo v0, "pkg_icon://"

    invoke-virtual {p4}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p5, Lcom/miui/permcenter/permissions/h;->icon:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v0, p5, Lcom/miui/permcenter/permissions/h;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p4}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p4}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.hybrid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/miui/permcenter/permissions/h;->Pu:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/g;->Pt:Landroid/content/res/Resources;

    const v2, 0x7f0708d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/miui/permcenter/c;->getCount()I

    move-result v0

    iget-object v1, p5, Lcom/miui/permcenter/permissions/h;->Pu:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/g;->Pt:Landroid/content/res/Resources;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0c0034

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected createViewHolder(Landroid/view/View;)Lcom/miui/permcenter/permissions/h;
    .locals 2

    new-instance v1, Lcom/miui/permcenter/permissions/h;

    invoke-direct {v1}, Lcom/miui/permcenter/permissions/h;-><init>()V

    const v0, 0x7f0a0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/permcenter/permissions/h;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/permcenter/permissions/h;->title:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/permcenter/permissions/h;->Pu:Landroid/widget/TextView;

    return-object v1
.end method

.method protected bridge synthetic createViewHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/g;->createViewHolder(Landroid/view/View;)Lcom/miui/permcenter/permissions/h;

    move-result-object v0

    return-object v0
.end method

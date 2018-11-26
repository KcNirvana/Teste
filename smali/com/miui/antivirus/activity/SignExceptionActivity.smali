.class public Lcom/miui/antivirus/activity/SignExceptionActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private asB:Landroid/widget/Button;

.field private asC:Landroid/widget/TextView;

.field private asD:Lcom/miui/antivirus/activity/g;

.field private asE:Landroid/widget/ListView;

.field private mEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private azb()V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/antivirus/i;->aDk()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/miui/antivirus/utils/a;->aug(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/g;

    move-object v1, v0

    check-cast v1, Lcom/miui/antivirus/model/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/miui/antivirus/activity/SignExceptionActivity;->azd(Ljava/util/List;)V

    return-void
.end method

.method private azc(Ljava/util/Set;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/antivirus/i;->aDk()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDT(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->azb()V

    const v0, 0x7f07056e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private azd(Ljava/util/List;)V
    .locals 7

    const/16 v1, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asB:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asC:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0038

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asC:Landroid/widget/TextView;

    new-array v3, v6, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v0, v3}, Lcom/miui/common/b/o;->aIZ(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asB:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asD:Lcom/miui/antivirus/activity/g;

    invoke-virtual {v1}, Lcom/miui/antivirus/activity/g;->azf()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asD:Lcom/miui/antivirus/activity/g;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/activity/g;->updateData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asD:Lcom/miui/antivirus/activity/g;

    invoke-virtual {v0}, Lcom/miui/antivirus/activity/g;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asB:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asC:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic aze(Lcom/miui/antivirus/activity/SignExceptionActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asB:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asD:Lcom/miui/antivirus/activity/g;

    invoke-virtual {v0}, Lcom/miui/antivirus/activity/g;->azf()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->azc(Ljava/util/Set;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0283
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->setContentView(I)V

    const v0, 0x7f0a0283

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asB:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asB:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asB:Landroid/widget/Button;

    const v1, 0x7f070740

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->mEmptyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f07056d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/miui/antivirus/activity/g;

    invoke-direct {v0, p0, p0}, Lcom/miui/antivirus/activity/g;-><init>(Lcom/miui/antivirus/activity/SignExceptionActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asD:Lcom/miui/antivirus/activity/g;

    const v0, 0x7f0a0284

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asE:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asE:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asD:Lcom/miui/antivirus/activity/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asE:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->asC:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->azb()V

    return-void
.end method

.class public Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mEmptyView:Landroid/widget/TextView;

.field private uZ:Landroid/widget/Button;

.field private va:Landroid/widget/TextView;

.field private vb:Lcom/miui/firstaidkit/g;

.field private vc:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private wL(Ljava/util/List;)V
    .locals 7

    const/16 v1, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->uZ:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->va:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0038

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->va:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->uZ:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->vb:Lcom/miui/firstaidkit/g;

    invoke-virtual {v1}, Lcom/miui/firstaidkit/g;->wO()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->vb:Lcom/miui/firstaidkit/g;

    invoke-virtual {v0, p1}, Lcom/miui/firstaidkit/g;->updateData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->vb:Lcom/miui/firstaidkit/g;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/g;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->uZ:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->va:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic wM(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->uZ:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic wN(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->wL(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/miui/firstaidkit/j;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->vb:Lcom/miui/firstaidkit/g;

    invoke-virtual {v1}, Lcom/miui/firstaidkit/g;->wO()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/firstaidkit/j;-><init>(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;Ljava/util/Set;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/firstaidkit/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0283
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300e6

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->setContentView(I)V

    const v0, 0x7f0a0283

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->uZ:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->uZ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->uZ:Landroid/widget/Button;

    const v1, 0x7f0706a7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->mEmptyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0706aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/miui/firstaidkit/g;

    invoke-direct {v0, p0, p0}, Lcom/miui/firstaidkit/g;-><init>(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->vb:Lcom/miui/firstaidkit/g;

    const v0, 0x7f0a0284

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->vc:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->vc:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->vb:Lcom/miui/firstaidkit/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->vc:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->va:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/firstaidkit/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/firstaidkit/i;-><init>(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;Lcom/miui/firstaidkit/i;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/firstaidkit/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.class public abstract Lcom/miui/powercenter/legacypowerrank/g;
.super Landroid/app/ListFragment;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private aFW:Lcom/miui/powercenter/legacypowerrank/h;

.field private aFX:Landroid/widget/ProgressBar;

.field private aFY:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/q;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/legacypowerrank/q;-><init>(Lcom/miui/powercenter/legacypowerrank/g;)V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/g;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private aRC(Lcom/miui/powercenter/legacypowerrank/e;)D
    .locals 4

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/e;->getValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->aRD()D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private aRE(Ljava/util/List;)V
    .locals 14

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFW:Lcom/miui/powercenter/legacypowerrank/h;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/h;->aRH()V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFW:Lcom/miui/powercenter/legacypowerrank/h;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->aRD()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/powercenter/legacypowerrank/h;->aRI(D)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/powercenter/legacypowerrank/j;->aRM(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getValue()D

    move-result-wide v8

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->aRD()D

    move-result-wide v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    instance-of v7, p0, Lcom/miui/powercenter/legacypowerrank/b;

    if-eqz v7, :cond_1

    cmpg-double v7, v8, v12

    if-gez v7, :cond_1

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFW:Lcom/miui/powercenter/legacypowerrank/h;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/legacypowerrank/h;->aRJ(Lcom/miui/powercenter/legacypowerrank/e;)V

    move-wide v0, v2

    goto :goto_1

    :cond_3
    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-direct {v0}, Lcom/miui/powercenter/legacypowerrank/e;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    iput-wide v2, v0, Lcom/miui/powercenter/legacypowerrank/e;->aFR:D

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFW:Lcom/miui/powercenter/legacypowerrank/h;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/legacypowerrank/h;->aRJ(Lcom/miui/powercenter/legacypowerrank/e;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFW:Lcom/miui/powercenter/legacypowerrank/h;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/h;->notifyDataSetChanged()V

    return-void
.end method

.method private aRF()V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFX:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFY:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->aRh()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->aRg()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/k;->bcj(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->aRi()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/legacypowerrank/g;->aRE(Ljava/util/List;)V

    return-void
.end method

.method static synthetic aRG(Lcom/miui/powercenter/legacypowerrank/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/g;->aRF()V

    return-void
.end method


# virtual methods
.method protected aRD()D
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRt()D

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract aRg()I
.end method

.method protected abstract aRh()I
.end method

.method protected abstract aRi()Ljava/util/List;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.miui.powercenter.action.UPDATE_POWER_RANK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/g;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030125

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/g;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFW:Lcom/miui/powercenter/legacypowerrank/h;

    invoke-virtual {v0, p3}, Lcom/miui/powercenter/legacypowerrank/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/legacypowerrank/g;->aRC(Lcom/miui/powercenter/legacypowerrank/e;)D

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/miui/powercenter/legacypowerrank/d;->aRm(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/e;D)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/h;

    invoke-direct {v0}, Lcom/miui/powercenter/legacypowerrank/h;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFW:Lcom/miui/powercenter/legacypowerrank/h;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFW:Lcom/miui/powercenter/legacypowerrank/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/g;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a0350

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFY:Landroid/widget/TextView;

    const v0, 0x7f0a0241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/g;->aFX:Landroid/widget/ProgressBar;

    return-void
.end method

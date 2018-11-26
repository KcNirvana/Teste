.class public Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private asA:Landroid/widget/ListView;

.field private asw:I

.field private asx:I

.field private asy:Ljava/util/ArrayList;

.field private asz:Lcom/miui/antivirus/ui/c;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private ayX(Ljava/lang/String;Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asy:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/h;

    invoke-virtual {v0, p1, p2}, Lcom/miui/antivirus/model/h;->arM(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/miui/antivirus/model/h;->arN()Lcom/miui/antivirus/model/HeaderModel$HeaderType;

    move-result-object v2

    sget-object v3, Lcom/miui/antivirus/model/HeaderModel$HeaderType;->alY:Lcom/miui/antivirus/model/HeaderModel$HeaderType;

    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_0

    iget v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asx:I

    :goto_1
    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asx:I

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asx:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0c0029

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/h;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asx:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asx:I

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    iget v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asw:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asw:I

    :goto_2
    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asw:I

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asw:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0c002a

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/h;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asw:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asw:I

    goto :goto_2

    :cond_3
    return-void
.end method

.method static synthetic ayY(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ayZ(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asw:I

    return p1
.end method

.method static synthetic aza(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asx:I

    return p1
.end method


# virtual methods
.method public ayW(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 2

    iput-object p2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asy:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asz:Lcom/miui/antivirus/ui/c;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asy:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/c;->updateData(Ljava/util/List;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/antivirus/utils/a;->auq(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/antivirus/i;->aDC(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-static {v2}, Lcom/miui/antivirus/i;->aDS(Ljava/util/ArrayList;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/antivirus/i;->aDj(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v1}, Lcom/miui/antivirus/i;->aDJ(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "action_register_foreground_notification"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->ayX(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asz:Lcom/miui/antivirus/ui/c;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/c;->notifyDataSetChanged()V

    return-void

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f03014e

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->setContentView(I)V

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asA:Landroid/widget/ListView;

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->mEmptyView:Landroid/view/View;

    new-instance v0, Lcom/miui/antivirus/ui/c;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/ui/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asz:Lcom/miui/antivirus/ui/c;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asz:Lcom/miui/antivirus/ui/c;

    invoke-virtual {v0, p0}, Lcom/miui/antivirus/ui/c;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->asz:Lcom/miui/antivirus/ui/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/antivirus/activity/R;

    invoke-direct {v0, p0, p0}, Lcom/miui/antivirus/activity/R;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;->ayW(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

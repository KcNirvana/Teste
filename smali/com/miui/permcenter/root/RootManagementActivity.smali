.class public Lcom/miui/permcenter/root/RootManagementActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private OG:Ljava/util/ArrayList;

.field private OH:Lcom/miui/permcenter/root/a;

.field private mEmptyView:Landroid/view/View;

.field private mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public Pt(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 2

    iput-object p2, p0, Lcom/miui/permcenter/root/RootManagementActivity;->OG:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/permcenter/root/RootManagementActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGI(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->OH:Lcom/miui/permcenter/root/a;

    invoke-virtual {v0, p2}, Lcom/miui/permcenter/root/a;->updateData(Ljava/util/List;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootManagementActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12

    const-wide/16 v10, 0x200

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_pkgname"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/miui/permcenter/root/RootManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0, v4, v4}, Lcom/miui/permcenter/root/RootManagementActivity;->overridePendingTransition(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->OG:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v4

    move v5, v4

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/root/d;

    invoke-virtual {v0}, Lcom/miui/permcenter/root/d;->PE()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->OG:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/root/d;

    invoke-virtual {v0}, Lcom/miui/permcenter/root/d;->PF()Lcom/miui/permcenter/root/RootHeaderType;

    move-result-object v7

    sget-object v8, Lcom/miui/permcenter/root/RootHeaderType;->OI:Lcom/miui/permcenter/root/RootHeaderType;

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const v9, 0x7f0c0036

    invoke-virtual {v7, v9, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/miui/permcenter/root/d;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const v9, 0x7f0c0037

    invoke-virtual {v7, v9, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/miui/permcenter/root/d;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->OH:Lcom/miui/permcenter/root/a;

    invoke-virtual {v0}, Lcom/miui/permcenter/root/a;->notifyDataSetChanged()V

    new-instance v0, Lcom/miui/permcenter/root/f;

    invoke-direct {v0, p0, v6}, Lcom/miui/permcenter/root/f;-><init>(Lcom/miui/permcenter/root/RootManagementActivity;Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/root/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030131

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/root/RootManagementActivity;->setContentView(I)V

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/root/RootManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iput-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/root/RootManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->mEmptyView:Landroid/view/View;

    new-instance v0, Lcom/miui/permcenter/root/a;

    const-wide/16 v2, 0x200

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/permcenter/root/a;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->OH:Lcom/miui/permcenter/root/a;

    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/permcenter/root/RootManagementActivity;->OH:Lcom/miui/permcenter/root/a;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->OH:Lcom/miui/permcenter/root/a;

    invoke-virtual {v0, p0}, Lcom/miui/permcenter/root/a;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootManagementActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x71

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/permcenter/root/e;

    invoke-direct {v0, p0, p0}, Lcom/miui/permcenter/root/e;-><init>(Lcom/miui/permcenter/root/RootManagementActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/root/RootManagementActivity;->Pt(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

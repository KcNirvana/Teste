.class public Lcom/miui/securityscan/shortcut/ShortcutActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private KY:Lcom/miui/securityscan/shortcut/d;

.field private KZ:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public Mj(Landroid/content/Loader;Ljava/util/List;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->KY:Lcom/miui/securityscan/shortcut/d;

    invoke-virtual {v0, p2}, Lcom/miui/securityscan/shortcut/d;->Mk(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->KY:Lcom/miui/securityscan/shortcut/d;

    invoke-virtual {v0}, Lcom/miui/securityscan/shortcut/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030102

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->setContentView(I)V

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->KZ:Landroid/widget/ListView;

    new-instance v0, Lcom/miui/securityscan/shortcut/d;

    invoke-direct {v0, p0, v2}, Lcom/miui/securityscan/shortcut/d;-><init>(Lcom/miui/securityscan/shortcut/ShortcutActivity;Lcom/miui/securityscan/shortcut/d;)V

    iput-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->KY:Lcom/miui/securityscan/shortcut/d;

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->KZ:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->KY:Lcom/miui/securityscan/shortcut/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/securityscan/shortcut/f;

    invoke-direct {v0, p0, p0}, Lcom/miui/securityscan/shortcut/f;-><init>(Lcom/miui/securityscan/shortcut/ShortcutActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->Mj(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

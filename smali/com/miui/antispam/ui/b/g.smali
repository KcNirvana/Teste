.class public abstract Lcom/miui/antispam/ui/b/g;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field protected WU:Landroid/view/View;

.field protected WV:Landroid/widget/LinearLayout;

.field protected WW:Lmiui/widget/EditableListView;

.field protected WX:Landroid/widget/ImageView;

.field protected WY:Landroid/widget/TextView;

.field protected WZ:Lmiui/app/Activity;

.field protected Xa:Landroid/widget/TextView;

.field protected Xb:Lcom/miui/antispam/ui/a/d;

.field protected Xc:Landroid/app/AlertDialog;

.field protected Xd:Lcom/miui/antispam/ui/b/i;

.field protected Xe:Ljava/lang/String;

.field protected Xf:Lcom/miui/antispam/ui/b/h;

.field protected Xg:Z

.field private Xh:Landroid/os/Handler;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_OTHER:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->Xe:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/ui/b/g;->Xg:Z

    new-instance v0, Lcom/miui/antispam/ui/b/x;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/antispam/ui/b/x;-><init>(Lcom/miui/antispam/ui/b/g;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->Xh:Landroid/os/Handler;

    return-void
.end method

.method static synthetic Wd(Lcom/miui/antispam/ui/b/g;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->Xh:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public abstract VD(Landroid/content/Context;)Lcom/miui/antispam/ui/a/d;
.end method

.method public abstract VF(Landroid/view/ActionMode;Z)V
.end method

.method public Wc(I)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v6

    if-ne p1, v5, :cond_1

    const-string/jumbo v0, "address"

    move-object v1, v0

    :goto_0
    move v2, v4

    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lmiui/widget/EditableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "number"

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/antispam/util/h;->XN(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    new-instance v1, Lcom/miui/antispam/ui/b/i;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/g;->Xh:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/miui/antispam/ui/b/i;-><init>(Lcom/miui/antispam/ui/b/g;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/antispam/ui/b/g;->Xd:Lcom/miui/antispam/ui/b/i;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/g;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/g;->Xd:Lcom/miui/antispam/ui/b/i;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/provider/MiuiSettings$AntiSpam;->KEY_ANTISPAM_ACTION_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/provider/MiuiSettings$AntiSpam;->KEY_ANTISPAM_ACTION_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->Xe:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/miui/antispam/ui/b/h;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/b/h;-><init>(Lcom/miui/antispam/ui/b/g;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->Xf:Lcom/miui/antispam/ui/b/h;

    const v0, 0x7f0300a2

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a01ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->WV:Landroid/widget/LinearLayout;

    const v0, 0x1020004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->WU:Landroid/view/View;

    const v0, 0x7f0a01e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->WX:Landroid/widget/ImageView;

    const v0, 0x7f0a01e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->WY:Landroid/widget/TextView;

    const v0, 0x7f0a01e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->Xa:Landroid/widget/TextView;

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/EditableListView;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->WW:Lmiui/widget/EditableListView;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WW:Lmiui/widget/EditableListView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lmiui/widget/EditableListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WW:Lmiui/widget/EditableListView;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/g;->Xf:Lcom/miui/antispam/ui/b/h;

    invoke-virtual {v0, v2}, Lmiui/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, p0}, Lmiui/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/g;->VD(Landroid/content/Context;)Lcom/miui/antispam/ui/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->Xb:Lcom/miui/antispam/ui/a/d;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WW:Lmiui/widget/EditableListView;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/g;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0, v2}, Lmiui/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_OTHER:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/g;->Xe:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->WV:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/g;->setHasOptionsMenu(Z)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/g;->Xd:Lcom/miui/antispam/ui/b/i;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/g;->Xb:Lcom/miui/antispam/ui/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/a/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

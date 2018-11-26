.class public Lcom/miui/powercenter/autotask/AutoTaskManageActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lmiui/widget/EditableListView$MultiChoiceModeListener;


# instance fields
.field private aLd:Lcom/miui/powercenter/autotask/FloatActionButtonView;

.field private aLe:Lmiui/widget/EditableListView;

.field private aLf:Landroid/widget/AdapterView$OnItemClickListener;

.field private aLg:Lcom/miui/powercenter/autotask/r;

.field private aLh:Ljava/util/HashSet;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLh:Ljava/util/HashSet;

    new-instance v0, Lcom/miui/powercenter/autotask/T;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/T;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/powercenter/autotask/U;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/U;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLf:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/miui/powercenter/autotask/V;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/V;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private aXB(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->setTranslucentStatus(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private aXD(I)V
    .locals 8

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLg:Lcom/miui/powercenter/autotask/r;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/autotask/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    new-instance v2, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v2, v0}, Lcom/miui/powercenter/autotask/AutoTask;-><init>(Landroid/database/Cursor;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "task"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "bundle"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/powercenter/b/a;->bdk()V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/powercenter/b/a;->bdl()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/powercenter/b/a;->bdm()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/powercenter/b/a;->bdn()V

    goto :goto_0
.end method

.method static synthetic aXE(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Lcom/miui/powercenter/autotask/FloatActionButtonView;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLd:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    return-object v0
.end method

.method static synthetic aXF(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Lmiui/widget/EditableListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLe:Lmiui/widget/EditableListView;

    return-object v0
.end method

.method static synthetic aXG(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLh:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic aXH(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aXD(I)V

    return-void
.end method


# virtual methods
.method public aXC(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLg:Lcom/miui/powercenter/autotask/r;

    invoke-virtual {v0, p2}, Lcom/miui/powercenter/autotask/r;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0423

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLh:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070454

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/powercenter/autotask/W;

    invoke-direct {v2, p0, p1}, Lcom/miui/powercenter/autotask/W;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;Landroid/view/ActionMode;)V

    invoke-static {p0, v0, v1, v2}, Lcom/miui/powercenter/autotask/b;->aUW(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLg:Lcom/miui/powercenter/autotask/r;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/r;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLh:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLg:Lcom/miui/powercenter/autotask/r;

    invoke-virtual {v3, v0}, Lcom/miui/powercenter/autotask/r;->getItemId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLh:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030107

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->setContentView(I)V

    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/EditableListView;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLe:Lmiui/widget/EditableListView;

    new-instance v0, Lcom/miui/powercenter/autotask/r;

    invoke-direct {v0, p0, p0}, Lcom/miui/powercenter/autotask/r;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLg:Lcom/miui/powercenter/autotask/r;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLe:Lmiui/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLg:Lcom/miui/powercenter/autotask/r;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLe:Lmiui/widget/EditableListView;

    invoke-virtual {v0, p0}, Lmiui/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLe:Lmiui/widget/EditableListView;

    invoke-virtual {v0, p0}, Lmiui/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLe:Lmiui/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLe:Lmiui/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLf:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a0303

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/FloatActionButtonView;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLd:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLd:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/FloatActionButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/miui/powercenter/b/b;->bdG()V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLd:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/FloatActionButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLh:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aXB(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/miui/powercenter/autotask/AutoTask;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/miui/powercenter/autotask/AutoTask;->aLk:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLd:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/FloatActionButtonView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aXB(Z)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 3

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLh:Ljava/util/HashSet;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLh:Ljava/util/HashSet;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLe:Lmiui/widget/EditableListView;

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/common/a/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aXC(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aLg:Lcom/miui/powercenter/autotask/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/r;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

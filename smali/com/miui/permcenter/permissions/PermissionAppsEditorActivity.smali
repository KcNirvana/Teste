.class public Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private Pc:Ljava/util/ArrayList;

.field private Pd:Lcom/miui/permcenter/permissions/d;

.field private Pe:Landroid/widget/ListView;

.field private Pf:I

.field private Pg:J

.field private Ph:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private PS(Z)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pc:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pg:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v10, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pg:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v10, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_0

    :cond_3
    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pg:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pd:Lcom/miui/permcenter/permissions/d;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/d;->notifyDataSetChanged()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/miui/permcenter/permissions/q;

    invoke-direct {v0, p0, v2, p1}, Lcom/miui/permcenter/permissions/q;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Ljava/util/ArrayList;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private PT(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pc:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_2

    const v0, 0x7f070665

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz p1, :cond_3

    const v0, 0x7f070667

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/permissions/p;

    invoke-direct {v1, p0, p1}, Lcom/miui/permcenter/permissions/p;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Z)V

    const v2, 0x7f0705d4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    invoke-virtual {v0, v1, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void

    :cond_2
    const v0, 0x7f070666

    goto :goto_0

    :cond_3
    const v0, 0x7f070668

    goto :goto_1
.end method

.method static synthetic PU(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Lcom/miui/permcenter/permissions/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pd:Lcom/miui/permcenter/permissions/d;

    return-object v0
.end method

.method static synthetic PV(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pg:J

    return-wide v0
.end method

.method static synthetic PW(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->PS(Z)V

    return-void
.end method


# virtual methods
.method public PR(Landroid/content/Loader;Lcom/miui/permcenter/permissions/b;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pe:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pd:Lcom/miui/permcenter/permissions/d;

    iget-boolean v1, p2, Lcom/miui/permcenter/permissions/b;->Pa:Z

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/d;->Qe(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pd:Lcom/miui/permcenter/permissions/d;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/d;->clear()V

    iget-object v0, p2, Lcom/miui/permcenter/permissions/b;->Pb:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pc:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pd:Lcom/miui/permcenter/permissions/d;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pc:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/d;->Sj(Ljava/util/Collection;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-wide/16 v4, -0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03012f

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->setContentView(I)V

    const v0, 0x7f0a0284

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pe:Landroid/widget/ListView;

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_permission_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pg:J

    iget-wide v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pg:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->finish()V

    return-void

    :cond_0
    const-string/jumbo v1, "extra_permission_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Ph:Ljava/lang/String;

    const-string/jumbo v1, "extra_permission_flags"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pf:I

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Ph:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Ph:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/miui/permcenter/permissions/d;

    iget-wide v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pg:J

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/permcenter/permissions/d;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pd:Lcom/miui/permcenter/permissions/d;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pe:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pe:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pd:Lcom/miui/permcenter/permissions/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/permcenter/permissions/s;

    invoke-direct {v0, p0, p0}, Lcom/miui/permcenter/permissions/s;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a042f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pf:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pg:J

    iget-object v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Ph:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Lcom/miui/permcenter/permissions/r;

    invoke-direct {v6, p0, v0}, Lcom/miui/permcenter/permissions/r;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Lcom/miui/permcenter/c;)V

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->Pf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/miui/permcenter/e;->SL(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;ILcom/miui/permcenter/f;Z)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/permcenter/permissions/b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->PR(Landroid/content/Loader;Lcom/miui/permcenter/permissions/b;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->PT(Z)V

    return v1

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->PT(Z)V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f0a042e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

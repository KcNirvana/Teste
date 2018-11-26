.class public Lcom/miui/antispam/ui/b/b;
.super Lcom/miui/antispam/ui/b/g;
.source ""


# instance fields
.field private Wr:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/g;-><init>()V

    return-void
.end method

.method private VC()V
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/b/m;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/b/m;-><init>(Lcom/miui/antispam/ui/b/b;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private VH()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/b;->Wr:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/antispam/util/g;->XD()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/b/b;->Wr:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/b/b;->Wr:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/b;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v2}, Lmiui/widget/EditableListView;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method static synthetic VI(Lcom/miui/antispam/ui/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/b;->VC()V

    return-void
.end method


# virtual methods
.method public VD(Landroid/content/Context;)Lcom/miui/antispam/ui/a/d;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/a/c;

    invoke-direct {v0, p1}, Lcom/miui/antispam/ui/a/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public VE(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WU:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setVisibility(I)V

    :goto_0
    move v0, v1

    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "total"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WU:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v2}, Lmiui/widget/EditableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WX:Landroid/widget/ImageView;

    const v2, 0x7f020291

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WY:Landroid/widget/TextView;

    const v2, 0x7f070030

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const v0, 0x7f070112

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/b;->Xa:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0, p2}, Lcom/miui/antispam/ui/a/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/b;->VH()V

    return-void
.end method

.method public VF(Landroid/view/ActionMode;Z)V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f07004c

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->Xc:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->Xc:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WZ:Lmiui/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p2, :cond_3

    const v0, 0x7f07006c

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p2, :cond_4

    :goto_2
    new-instance v2, Lcom/miui/antispam/ui/b/l;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/antispam/ui/b/l;-><init>(Lcom/miui/antispam/ui/b/b;Landroid/view/ActionMode;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/b;->Xc:Landroid/app/AlertDialog;

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0700cc

    goto :goto_0

    :cond_3
    const v0, 0x7f0700ce

    goto :goto_1

    :cond_4
    const v1, 0x7f070120

    goto :goto_2
.end method

.method public VG(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/miui/antispam/util/h;->XP(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "check_call"

    invoke-static {v0}, Lcom/miui/antispam/a/a;->Yr(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/b;->WZ:Lmiui/app/Activity;

    sget-object v2, Lmiui/provider/ExtraContacts$Calls;->CONTENT_CONVERSATION_URI:Landroid/net/Uri;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "*"

    aput-object v4, v3, v7

    const-string/jumbo v4, "count() as total"

    aput-object v4, v3, v6

    const-string/jumbo v4, "sum(case when is_read = 0 then 1 else 0 end) as unRead"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, "firewalltype >= ? "

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "date DESC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WZ:Lmiui/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WZ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0424

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/b;->Wr:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/b;->VH()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    invoke-super {p0, p1, p2, p3}, Lcom/miui/antispam/ui/b/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/miui/antispam/util/g;->XD()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/b;->WU:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/b;->WV:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/b;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v1, v3}, Lmiui/widget/EditableListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/b;->WX:Landroid/widget/ImageView;

    const v2, 0x7f020291

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/b;->WY:Landroid/widget/TextView;

    const v2, 0x7f070143

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/b;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0, p3}, Lcom/miui/antispam/ui/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const-string/jumbo v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "presentation"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "total"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/e;

    iget-object v4, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/antispam/ui/b/b;->WZ:Lmiui/app/Activity;

    sget v6, Lmiui/R$style;->TextAppearance_List_Primary:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v4, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/antispam/ui/b/b;->WZ:Lmiui/app/Activity;

    sget v6, Lmiui/R$style;->TextAppearance_List_Secondary:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/antispam/ui/b/b;->WZ:Lmiui/app/Activity;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const v3, 0x7f070034

    invoke-virtual {v4, v3, v5}, Lmiui/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WZ:Lmiui/app/Activity;

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/antispam/ui/b/b;->VG(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/b/b;->VE(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->Wr:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WW:Lmiui/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setAllItemsChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v2}, Lmiui/widget/EditableListView;->setAllItemsChecked(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/antispam/ui/b/g;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WZ:Lmiui/app/Activity;

    const v1, 0x7f070110

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/miui/antispam/ui/b/g;->onPause()V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/b;->WZ:Lmiui/app/Activity;

    new-instance v1, Lcom/miui/antispam/ui/b/k;

    invoke-direct {v1, p0, v0}, Lcom/miui/antispam/ui/b/k;-><init>(Lcom/miui/antispam/ui/b/b;Landroid/content/Context;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/miui/antispam/ui/b/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

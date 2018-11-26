.class public Lcom/miui/antispam/ui/b/d;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private WA:Lcom/miui/antispam/ui/a/h;

.field private WB:Landroid/widget/TextView;

.field private WC:Landroid/widget/Button;

.field private WD:Ljava/lang/String;

.field private WE:I

.field private Wy:Landroid/widget/Button;

.field private Wz:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mList:Landroid/widget/ListView;

.field private mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private VO()V
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/miui/antispam/ui/b/t;

    invoke-direct {v1, p0, v0}, Lcom/miui/antispam/ui/b/t;-><init>(Lcom/miui/antispam/ui/b/d;Landroid/content/Context;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/antispam/ui/b/t;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private VP(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.ADD_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RG:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RJ:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "numbers"

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/d;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic VR(Lcom/miui/antispam/ui/b/d;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic VS(Lcom/miui/antispam/ui/b/d;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->WB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic VT(Lcom/miui/antispam/ui/b/d;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic VU(Lcom/miui/antispam/ui/b/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->WD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic VV(Lcom/miui/antispam/ui/b/d;)I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/b/d;->WE:I

    return v0
.end method

.method static synthetic VW(Lcom/miui/antispam/ui/b/d;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/b/d;->VP(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public VQ(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->WA:Lcom/miui/antispam/ui/a/h;

    invoke-virtual {v0, p2}, Lcom/miui/antispam/ui/a/h;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->Wz:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/d;->WD:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/util/h;->XY(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/d;->WD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/antispam/util/h;->XZ(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/d;->WD:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "number_presentation"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/b/d;->WE:I

    invoke-virtual {p0, v2}, Lcom/miui/antispam/ui/b/d;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->WA:Lcom/miui/antispam/ui/a/h;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/a/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const-string/jumbo v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v1, v3}, Lcom/miui/antispam/util/h;->XM(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 v0, 0x1

    const v1, 0x7f070077

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f070078

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CallLogFragment"

    const-string/jumbo v2, "ClassCastException onCreateContextMenu: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget v0, p0, Lcom/miui/antispam/ui/b/d;->WE:I

    if-eq v0, v7, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->WC:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "presentation <> ? AND firewalltype >= ? "

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "date DESC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, " PHONE_NUMBERS_EQUAL(number, ?, 0) AND firewalltype >= ? "

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/antispam/ui/b/d;->WD:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "date DESC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    const v0, 0x7f03009a

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0026

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/d;->mNameView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a01e3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/d;->Wz:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a01ed

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/d;->WB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a003f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/d;->Wy:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->Wy:Landroid/widget/Button;

    new-instance v2, Lcom/miui/antispam/ui/b/q;

    invoke-direct {v2, p0}, Lcom/miui/antispam/ui/b/q;-><init>(Lcom/miui/antispam/ui/b/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/d;->WC:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->WC:Landroid/widget/Button;

    new-instance v2, Lcom/miui/antispam/ui/b/r;

    invoke-direct {v2, p0}, Lcom/miui/antispam/ui/b/r;-><init>(Lcom/miui/antispam/ui/b/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/antispam/ui/a/h;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/d;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/miui/antispam/ui/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/b/d;->WA:Lcom/miui/antispam/ui/a/h;

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/d;->mList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/d;->WA:Lcom/miui/antispam/ui/a/h;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/d;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/d;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->showContextMenu()Z

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/b/d;->VQ(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/d;->WA:Lcom/miui/antispam/ui/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/a/h;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/d;->VO()V

    return-void
.end method

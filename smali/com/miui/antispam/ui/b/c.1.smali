.class public Lcom/miui/antispam/ui/b/c;
.super Lcom/miui/antispam/ui/b/g;
.source ""


# static fields
.field public static final Ws:[Ljava/lang/String;


# instance fields
.field private Wt:Landroid/view/MenuItem;

.field private Wu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Wv:Landroid/view/MenuItem;

.field private Ww:I

.field private Wx:I

.field private mReportMenuItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "blocked_threads._id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "address"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "date"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "message_count"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "unread_count"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "snippet"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "snippet_cs"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/antispam/ui/b/c;->Ws:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/g;-><init>()V

    iput v1, p0, Lcom/miui/antispam/ui/b/c;->Ww:I

    iput v1, p0, Lcom/miui/antispam/ui/b/c;->Wx:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/antispam/ui/b/c;->Wu:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private VJ()V
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/b/p;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/b/p;-><init>(Lcom/miui/antispam/ui/b/c;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private VM()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Wv:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/miui/antispam/ui/b/c;->Wv:Landroid/view/MenuItem;

    iget v0, p0, Lcom/miui/antispam/ui/b/c;->Ww:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/miui/antispam/ui/b/c;->Wv:Landroid/view/MenuItem;

    iget v0, p0, Lcom/miui/antispam/ui/b/c;->Wx:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Wt:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Wt:Landroid/view/MenuItem;

    iget v3, p0, Lcom/miui/antispam/ui/b/c;->Ww:I

    if-lez v3, :cond_4

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method static synthetic VN(Lcom/miui/antispam/ui/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/c;->VJ()V

    return-void
.end method


# virtual methods
.method public VD(Landroid/content/Context;)Lcom/miui/antispam/ui/a/d;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/a/k;

    invoke-direct {v0, p1}, Lcom/miui/antispam/ui/a/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public VF(Landroid/view/ActionMode;Z)V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f07004c

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Xc:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Xc:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p2, :cond_3

    const v0, 0x7f07006b

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p2, :cond_4

    :goto_2
    new-instance v2, Lcom/miui/antispam/ui/b/o;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/antispam/ui/b/o;-><init>(Lcom/miui/antispam/ui/b/c;Landroid/view/ActionMode;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/c;->Xc:Landroid/app/AlertDialog;

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0700cb

    goto :goto_0

    :cond_3
    const v0, 0x7f0700cd

    goto :goto_1

    :cond_4
    const v1, 0x7f070120

    goto :goto_2
.end method

.method public VK(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/b/c;->Ww:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/b/c;->Wx:I

    :cond_2
    iget v0, p0, Lcom/miui/antispam/ui/b/c;->Ww:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WU:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v3}, Lmiui/widget/EditableListView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/miui/antispam/ui/b/c;->VM()V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/antispam/ui/b/c;->Ww:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f070111

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/c;->Xa:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WU:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WX:Landroid/widget/ImageView;

    const v1, 0x7f020292

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WY:Landroid/widget/TextView;

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Wu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0, v3}, Lcom/miui/antispam/ui/a/d;->Vi(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0, p2}, Lcom/miui/antispam/ui/a/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0, v3}, Lcom/miui/antispam/ui/a/d;->Vi(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0, p2}, Lcom/miui/antispam/ui/a/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Wu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public VL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/miui/antispam/util/h;->XS(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "check_sms"

    invoke-static {v0}, Lcom/miui/antispam/a/a;->Yr(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-ne p1, v6, :cond_0

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_SMS_LOG:Landroid/net/Uri;

    sget-object v3, Lcom/miui/antispam/ui/b/c;->Ws:[Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "first_load_count"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "date DESC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-ne p1, v3, :cond_1

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_SMS_LOG:Landroid/net/Uri;

    sget-object v3, Lcom/miui/antispam/ui/b/c;->Ws:[Ljava/lang/String;

    const-string/jumbo v6, "date DESC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    sget-object v2, Lmiui/provider/ExtraTelephony$MmsSms;->BLOCKED_CONVERSATION_CONTENT_URI:Landroid/net/Uri;

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v5, "sum(message_count)"

    aput-object v5, v3, v7

    const-string/jumbo v5, "sum(unread_count)"

    aput-object v5, v3, v6

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0433

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/c;->mReportMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0a0434

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/c;->Wv:Landroid/view/MenuItem;

    const v0, 0x7f0a0424

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/c;->Wt:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->mReportMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->mReportMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-direct {p0}, Lcom/miui/antispam/ui/b/c;->VM()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-super {p0, p1, p2, p3}, Lcom/miui/antispam/ui/b/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/miui/antispam/util/g;->XD()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/c;->WU:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/c;->WV:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/c;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v1, v3}, Lmiui/widget/EditableListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/c;->WX:Landroid/widget/ImageView;

    const v2, 0x7f020292

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/c;->WY:Landroid/widget/TextView;

    const v2, 0x7f070143

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "first_load_count"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/c;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/c;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/c;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/antispam/ui/b/g;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0, p3}, Lcom/miui/antispam/ui/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const-string/jumbo v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "message_count"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/e;

    iget-object v3, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    sget v5, Lmiui/R$style;->TextAppearance_List_Primary:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v3, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    sget v5, Lmiui/R$style;->TextAppearance_List_Secondary:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v2, 0x7f070034

    invoke-virtual {v3, v2, v4}, Lmiui/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/ui/b/c;->VL(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/b/c;->VK(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Wv:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/b/n;

    invoke-direct {v1, p0, v0}, Lcom/miui/antispam/ui/b/n;-><init>(Lcom/miui/antispam/ui/b/c;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0, v3}, Lcom/miui/antispam/ui/a/d;->Vi(Z)V

    const-string/jumbo v0, "sms_all_read"

    invoke-static {v0}, Lcom/miui/antispam/a/a;->Yr(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/antispam/ui/b/g;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->Wt:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v3}, Lmiui/widget/EditableListView;->setAllItemsChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v2}, Lmiui/widget/EditableListView;->setAllItemsChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/b/c;->WZ:Lmiui/app/Activity;

    const v1, 0x7f07010f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

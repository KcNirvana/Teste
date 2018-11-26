.class public Lcom/miui/antispam/ui/activity/KeywordListActivity;
.super Lcom/miui/antispam/ui/activity/b;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private Si:Landroid/view/MenuItem;

.field private Sj:Lmiui/provider/BatchOperation;

.field private Sk:Landroid/view/MenuItem;

.field private Sl:Lcom/miui/antispam/ui/activity/d;

.field private Sm:Landroid/view/inputmethod/InputMethodManager;

.field private Sn:Z

.field private So:Ljava/util/HashSet;

.field private Sp:Landroid/widget/Toast;

.field private Sq:Lmiui/widget/EditableListView;

.field private Sr:Landroid/widget/ResourceCursorAdapter;

.field private Ss:Lcom/miui/antispam/ui/activity/g;

.field protected St:Z

.field private Su:J

.field private Sv:Ljava/lang/String;

.field private Sw:I

.field private Sx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/b;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->So:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->St:Z

    return-void
.end method

.method private TB(Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->So:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sl:Lcom/miui/antispam/ui/activity/d;

    invoke-virtual {v2}, Lcom/miui/antispam/ui/activity/d;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "keyword"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    sget-object v2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v3, "type"

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v0, "sim_id"

    iget v3, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sj:Lmiui/provider/BatchOperation;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sj:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sj:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sj:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sj:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_4
    return-void
.end method

.method static synthetic TD(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sj:Lmiui/provider/BatchOperation;

    return-object v0
.end method

.method static synthetic TE(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic TF(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->So:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic TG(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sp:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic TH(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/widget/EditableListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    return-object v0
.end method

.method static synthetic TI(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/widget/ResourceCursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sr:Landroid/widget/ResourceCursorAdapter;

    return-object v0
.end method

.method static synthetic TJ(Lcom/miui/antispam/ui/activity/KeywordListActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Su:J

    return-wide v0
.end method

.method static synthetic TK(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic TL(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sp:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic TM(Lcom/miui/antispam/ui/activity/KeywordListActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TB(Ljava/util/ArrayList;)V

    return-void
.end method

.method private Ty()V
    .locals 6

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a01df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/antispam/ui/activity/I;

    invoke-direct {v2, p0, v0}, Lcom/miui/antispam/ui/activity/I;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V

    const v3, 0x7f07005d

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/miui/antispam/ui/activity/J;

    invoke-direct {v2, p0, v0}, Lcom/miui/antispam/ui/activity/J;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private Tz()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a01df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sv:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/antispam/ui/activity/H;

    invoke-direct {v2, p0, v0}, Lcom/miui/antispam/ui/activity/H;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V

    const v0, 0x7f07005d

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public TA(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->So:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->So:Ljava/util/HashSet;

    const-string/jumbo v1, "data"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KeywordListActivity"

    const-string/jumbo v2, "Cursor err when caching keywords: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sr:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TC()V

    return-void
.end method

.method public TC()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sk:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sk:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    invoke-virtual {v2}, Lmiui/widget/EditableListView;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
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
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Tz()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/G;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/G;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V

    const v2, 0x7f07004a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03009c

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->setContentView(I)V

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_sim_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sw:I

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_black"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sn:Z

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sn:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0700de

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->setTitle(I)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/EditableListView;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    const v0, 0x7f0a01e0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sx:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sn:Z

    if-eqz v0, :cond_1

    const v0, 0x7f070082

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/miui/antispam/ui/activity/g;

    invoke-direct {v0, p0, v2}, Lcom/miui/antispam/ui/activity/g;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Lcom/miui/antispam/ui/activity/g;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Ss:Lcom/miui/antispam/ui/activity/g;

    new-instance v0, Lcom/miui/antispam/ui/activity/e;

    invoke-direct {v0, p0, p0}, Lcom/miui/antispam/ui/activity/e;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sr:Landroid/widget/ResourceCursorAdapter;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sr:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Ss:Lcom/miui/antispam/ui/activity/g;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    invoke-virtual {v0, p0}, Lmiui/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    new-instance v0, Lcom/miui/antispam/ui/activity/d;

    invoke-direct {v0, p0, v2}, Lcom/miui/antispam/ui/activity/d;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Lcom/miui/antispam/ui/activity/d;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sl:Lcom/miui/antispam/ui/activity/d;

    new-instance v0, Lmiui/provider/BatchOperation;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "antispam"

    invoke-direct {v0, v1, v2}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sj:Lmiui/provider/BatchOperation;

    return-void

    :cond_0
    const v0, 0x7f0700df

    goto :goto_0

    :cond_1
    const v0, 0x7f070083

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sr:Landroid/widget/ResourceCursorAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Su:J

    const-string/jumbo v1, "data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sv:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sv:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "type = ? AND sim_id = ? "

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sn:Z

    if-eqz v1, :cond_0

    move v1, v6

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v5, v7

    iget v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sw:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    move-object v1, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/16 v0, 0x65

    const v1, 0x7f07007e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_edit_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sk:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sk:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f07007d

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Si:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Si:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TC()V

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->showContextMenu()Z

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TA(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sr:Landroid/widget/ResourceCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Ty()V

    return v1

    :sswitch_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setAllItemsChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->Sq:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v2}, Lmiui/widget/EditableListView;->setAllItemsChecked(Z)V

    :cond_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

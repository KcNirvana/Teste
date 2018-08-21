.class public Lcom/miui/payment/ui/edit/RecordEditorActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "RecordEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/payment/ui/edit/EditViewInteraction;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditData:Lcom/miui/payment/ui/edit/EditData;

.field private mEditLayoutContainer:Lcom/miui/payment/ui/edit/EditLayoutContainer;

.field mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/edit/RecordEditorActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doDelete()V
    .locals 5

    iget-object v2, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    invoke-virtual {v2}, Lcom/miui/payment/ui/edit/EditData;->getRecordId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->hideSoftKeyBoard()V

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x1b0b00e9

    invoke-virtual {p0, v3}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/payment/ui/edit/RecordEditorActivity$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/miui/payment/ui/edit/RecordEditorActivity$1;-><init>(Lcom/miui/payment/ui/edit/RecordEditorActivity;J)V

    invoke-static {v2, v3, v4}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->showSimpleDialog(Landroid/app/FragmentManager;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private hideSoftKeyBoard()V
    .locals 2

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditLayoutContainer:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditLayoutContainer:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-virtual {v1, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->hideSoftKeyBoard(Landroid/view/inputmethod/InputMethodManager;)V

    :cond_0
    return-void
.end method

.method private initRequest()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "paymentassistant.intent.action.edit_record"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->setupActionBar(Z)V

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditLayoutContainer:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

    invoke-virtual {v3, v4, v5}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setupForNewAction(Landroid/app/FragmentManager;Lcom/miui/payment/ui/edit/EditPresenter;)V

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "extra_editor_record_bundle"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/payment/utils/EditorUtil;->parseExtraForEdit(Landroid/os/Bundle;)Lcom/miui/payment/ui/edit/EditData;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    iget-object v3, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditLayoutContainer:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

    iget-object v6, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setupForEditAction(Landroid/app/FragmentManager;Lcom/miui/payment/ui/edit/EditPresenter;Lcom/miui/payment/ui/edit/EditData;)V

    goto :goto_1
.end method

.method private setupActionBar(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1b0400da

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setEndView(Landroid/view/View;)V

    const v2, 0x1b090319

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->doDelete()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b090319
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b0400d1

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/payment/ui/edit/EditPresenterImpl;

    invoke-direct {v0}, Lcom/miui/payment/ui/edit/EditPresenterImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

    iget-object v0, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

    invoke-interface {v0, p0}, Lcom/miui/payment/ui/edit/EditPresenter;->subscribe(Lcom/miui/payment/ui/base/IViewInteraction;)V

    const v0, 0x1b090309

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/edit/EditLayoutContainer;

    iput-object v0, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditLayoutContainer:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-direct {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->initRequest()V

    const-string/jumbo v0, "finance_user"

    invoke-static {v0}, Lcom/miui/payment/utils/StatUtil;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onDeleteResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/RecordEditorActivity;->mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

    invoke-interface {v0}, Lcom/miui/payment/ui/edit/EditPresenter;->unsubscribe()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onSaveResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/RecordEditorActivity;->finish()V

    :cond_0
    return-void
.end method

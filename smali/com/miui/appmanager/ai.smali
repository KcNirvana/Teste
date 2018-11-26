.class final Lcom/miui/appmanager/ai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# instance fields
.field final synthetic aWO:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ai;->aWO:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    check-cast p1, Lmiui/view/SearchActionMode;

    iget-object v0, p0, Lcom/miui/appmanager/ai;->aWO:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bov(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/appmanager/ai;->aWO:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bon(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/ai;->aWO:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bou(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    check-cast p1, Lmiui/view/SearchActionMode;

    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/ai;->aWO:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bou(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/appmanager/ai;->aWO:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->exitSearchMode()V

    iget-object v0, p0, Lcom/miui/appmanager/ai;->aWO:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpe(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iget-object v0, p0, Lcom/miui/appmanager/ai;->aWO:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boY(Lcom/miui/appmanager/AppManagerMainActivity;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

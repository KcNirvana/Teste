.class final Lcom/miui/gamebooster/ui/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# instance fields
.field final synthetic cJ:Lcom/miui/gamebooster/ui/WhiteListActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WhiteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/x;->cJ:Lcom/miui/gamebooster/ui/WhiteListActivity;

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

    const-string/jumbo v0, "is_mediatek"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/x;->cJ:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->D(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/x;->cJ:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->z(Lcom/miui/gamebooster/ui/WhiteListActivity;)Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    :cond_0
    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/x;->cJ:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WhiteListActivity;->C(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/text/TextWatcher;

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

    iget-object v1, p0, Lcom/miui/gamebooster/ui/x;->cJ:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WhiteListActivity;->C(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/x;->cJ:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->exitSearchMode()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/x;->cJ:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->x(Lcom/miui/gamebooster/ui/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/x;->cJ:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->y(Lcom/miui/gamebooster/ui/WhiteListActivity;)Lcom/miui/gamebooster/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/x;->cJ:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WhiteListActivity;->x(Lcom/miui/gamebooster/ui/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/b/a;->updateData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

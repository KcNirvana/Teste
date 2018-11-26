.class final Lcom/miui/permcenter/permissions/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# instance fields
.field final synthetic PR:Lcom/miui/permcenter/permissions/f;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/u;->PR:Lcom/miui/permcenter/permissions/f;

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

    iget-object v0, p0, Lcom/miui/permcenter/permissions/u;->PR:Lcom/miui/permcenter/permissions/f;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/f;->Qo(Lcom/miui/permcenter/permissions/f;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/u;->PR:Lcom/miui/permcenter/permissions/f;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/f;->Qm(Lcom/miui/permcenter/permissions/f;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/u;->PR:Lcom/miui/permcenter/permissions/f;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/f;->Qn(Lcom/miui/permcenter/permissions/f;)Landroid/text/TextWatcher;

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

    iget-object v1, p0, Lcom/miui/permcenter/permissions/u;->PR:Lcom/miui/permcenter/permissions/f;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/f;->Qn(Lcom/miui/permcenter/permissions/f;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/u;->PR:Lcom/miui/permcenter/permissions/f;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/f;->exitSearchMode()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/u;->PR:Lcom/miui/permcenter/permissions/f;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/f;->Qs(Lcom/miui/permcenter/permissions/f;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/u;->PR:Lcom/miui/permcenter/permissions/f;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/f;->Qr(Lcom/miui/permcenter/permissions/f;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

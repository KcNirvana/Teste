.class final Lcom/miui/privacyapps/ui/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# instance fields
.field final synthetic bbM:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/h;->bbM:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

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

    iget-object v0, p0, Lcom/miui/privacyapps/ui/h;->bbM:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxX(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/h;->bbM:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxV(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    :cond_0
    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/privacyapps/ui/h;->bbM:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxW(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Landroid/text/TextWatcher;

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

    iget-object v1, p0, Lcom/miui/privacyapps/ui/h;->bbM:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxW(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/h;->bbM:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-virtual {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->exitSearchMode()V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/h;->bbM:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxU(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Lcom/miui/privacyapps/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/privacyapps/ui/h;->bbM:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxT(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/ui/b;->bye(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/miui/optimizemanage/optimizeresult/h;
.super Lcom/miui/optimizemanage/optimizeresult/m;
.source ""


# instance fields
.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public wE:Ljava/lang/String;

.field public wF:Ljava/lang/String;

.field public wG:Ljava/lang/String;

.field public wH:Ljava/lang/String;

.field public wI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/m;-><init>()V

    const v0, 0x7f0300fd

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/h;->setLayoutId(I)V

    return-void
.end method

.method private ym(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/a;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/i;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/i;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getButton()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wE:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->title:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/m;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/h;->ym(Landroid/content/Context;)V

    return-void
.end method

.method public setButton(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wE:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/h;->summary:Ljava/lang/String;

    return-void
.end method

.method public yn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wF:Ljava/lang/String;

    return-object v0
.end method

.method public yo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wG:Ljava/lang/String;

    return-object v0
.end method

.method public yp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wH:Ljava/lang/String;

    return-object v0
.end method

.method public yq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wI:Ljava/lang/String;

    return-object v0
.end method

.method public yr(Landroid/content/Context;Ljava/util/List;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x3e7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f0c0012

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->title:Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/e;

    iget v2, v0, Lcom/miui/optimizemanage/memoryclean/e;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string/jumbo v2, "pkg_icon_xspace://"

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/e;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wF:Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wG:Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wH:Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wI:Ljava/lang/String;

    if-le v1, v5, :cond_0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/e;

    iget v2, v0, Lcom/miui/optimizemanage/memoryclean/e;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "pkg_icon_xspace://"

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/e;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wG:Ljava/lang/String;

    if-le v1, v8, :cond_0

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/e;

    iget v2, v0, Lcom/miui/optimizemanage/memoryclean/e;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    const-string/jumbo v2, "pkg_icon_xspace://"

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/e;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wH:Ljava/lang/String;

    const/4 v0, 0x3

    if-le v1, v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/e;

    iget v1, v0, Lcom/miui/optimizemanage/memoryclean/e;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, v4, :cond_4

    const-string/jumbo v1, "pkg_icon_xspace://"

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/e;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->wI:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "pkg_icon://"

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/e;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "pkg_icon://"

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/e;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "pkg_icon://"

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/e;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "pkg_icon://"

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/e;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

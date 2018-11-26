.class final Lcom/miui/gamebooster/ui/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic cG:Lcom/miui/gamebooster/ui/WhiteListActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WhiteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/u;->cG:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/e;

    invoke-virtual {v0, p2}, Lcom/miui/gamebooster/model/e;->mP(Z)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mR()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/u;->cG:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v1, v3}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mR()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/miui/gamebooster/ui/u;->cG:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v4, v1, v3, v0, v8}, Lcom/miui/gamebooster/a/p;->ga(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/u;->cG:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->x(Lcom/miui/gamebooster/ui/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/f;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/f;->mV()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/e;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mQ()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/ui/u;->cG:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v1, v3, v0, v2, v8}, Lcom/miui/gamebooster/a/p;->gb(Landroid/content/Context;Ljava/lang/String;IZI)V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/u;->cG:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->x(Lcom/miui/gamebooster/ui/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/f;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/f;->mW()Lcom/miui/gamebooster/model/HeaderType;

    move-result-object v5

    sget-object v6, Lcom/miui/gamebooster/model/HeaderType;->kG:Lcom/miui/gamebooster/model/HeaderType;

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/miui/gamebooster/ui/u;->cG:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-virtual {v5}, Lcom/miui/gamebooster/ui/WhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const v7, 0x7f0c0053

    invoke-virtual {v5, v7, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/gamebooster/model/f;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/miui/gamebooster/ui/u;->cG:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-virtual {v5}, Lcom/miui/gamebooster/ui/WhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const v7, 0x7f0c0054

    invoke-virtual {v5, v7, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/gamebooster/model/f;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/ui/u;->cG:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->y(Lcom/miui/gamebooster/ui/WhiteListActivity;)Lcom/miui/gamebooster/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/b/a;->notifyDataSetChanged()V

    return-void
.end method

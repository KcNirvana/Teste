.class Lcom/miui/weather2/ActivitySetCity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ActivitySetCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySetCity;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/ActivitySetCity;Lcom/miui/weather2/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivitySetCity$a;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->f(Lcom/miui/weather2/ActivitySetCity;)Lcom/miui/weather2/model/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/model/g;->d()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->f(Lcom/miui/weather2/ActivitySetCity;)Lcom/miui/weather2/model/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/model/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->g(Lcom/miui/weather2/ActivitySetCity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->h(Lcom/miui/weather2/ActivitySetCity;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->i(Lcom/miui/weather2/ActivitySetCity;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->j(Lcom/miui/weather2/ActivitySetCity;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->k(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0, p1}, Lcom/miui/weather2/ActivitySetCity;->a(Lcom/miui/weather2/ActivitySetCity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0, v2}, Lcom/miui/weather2/ActivitySetCity;->a(Lcom/miui/weather2/ActivitySetCity;Z)Z

    check-cast p1, Lmiui/view/EditActionMode;

    const v0, 0x1020019

    const v1, 0x7f090042

    invoke-interface {p1, v0, v1}, Lmiui/view/EditActionMode;->setButton(II)V

    const v0, 0x102001a

    const v1, 0x7f09003f

    invoke-interface {p1, v0, v1}, Lmiui/view/EditActionMode;->setButton(II)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->e(Lcom/miui/weather2/ActivitySetCity;)Landroid/view/ActionMode;

    move-result-object v0

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(I)V

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivitySetCity;->a(Lcom/miui/weather2/ActivitySetCity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0, v2}, Lcom/miui/weather2/ActivitySetCity;->a(Lcom/miui/weather2/ActivitySetCity;Z)Z

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->f(Lcom/miui/weather2/ActivitySetCity;)Lcom/miui/weather2/model/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/weather2/model/g;->b(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->f(Lcom/miui/weather2/ActivitySetCity;)Lcom/miui/weather2/model/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/model/g;->e()V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->f(Lcom/miui/weather2/ActivitySetCity;)Lcom/miui/weather2/model/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/weather2/model/g;->a(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0, v2}, Lcom/miui/weather2/ActivitySetCity;->b(Lcom/miui/weather2/ActivitySetCity;Z)Z

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->l(Lcom/miui/weather2/ActivitySetCity;)Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->l(Lcom/miui/weather2/ActivitySetCity;)Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->m(Lcom/miui/weather2/ActivitySetCity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->n(Lcom/miui/weather2/ActivitySetCity;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity$a;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->o(Lcom/miui/weather2/ActivitySetCity;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

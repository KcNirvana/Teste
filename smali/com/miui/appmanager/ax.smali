.class final Lcom/miui/appmanager/ax;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic aXh:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0, v3}, Lcom/miui/appmanager/AppManagerMainActivity;->boD(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boW(Lcom/miui/appmanager/AppManagerMainActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boD(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boZ(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boe(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boe(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bob(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boj(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpe(Lcom/miui/appmanager/AppManagerMainActivity;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->boB(Lcom/miui/appmanager/AppManagerMainActivity;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boe(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bob(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bob(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bos(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpe(Lcom/miui/appmanager/AppManagerMainActivity;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/ax;->aXh:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bop(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

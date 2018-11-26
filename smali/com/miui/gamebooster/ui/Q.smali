.class final Lcom/miui/gamebooster/ui/Q;
.super Lcom/miui/common/a/b/b;
.source ""


# instance fields
.field final synthetic di:Lcom/miui/gamebooster/ui/P;

.field final synthetic dj:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/P;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/Q;->di:Lcom/miui/gamebooster/ui/P;

    iput-object p3, p0, Lcom/miui/gamebooster/ui/Q;->dj:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/miui/common/a/b/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected runOnUiThread()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/Q;->di:Lcom/miui/gamebooster/ui/P;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/Q;->di:Lcom/miui/gamebooster/ui/P;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/Q;->dj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/Q;->di:Lcom/miui/gamebooster/ui/P;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bT(Lcom/miui/gamebooster/ui/c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/Q;->di:Lcom/miui/gamebooster/ui/P;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->br(Lcom/miui/gamebooster/ui/c;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/Q;->di:Lcom/miui/gamebooster/ui/P;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/P;->dh:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bW(Lcom/miui/gamebooster/ui/c;)V

    return-void
.end method

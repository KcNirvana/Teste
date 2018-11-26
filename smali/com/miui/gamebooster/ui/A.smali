.class final Lcom/miui/gamebooster/ui/A;
.super Lcom/miui/common/a/b/b;
.source ""


# instance fields
.field final synthetic cM:Lcom/miui/gamebooster/ui/z;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/z;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/A;->cM:Lcom/miui/gamebooster/ui/z;

    invoke-direct {p0, p2}, Lcom/miui/common/a/b/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected runOnUiThread()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/A;->cM:Lcom/miui/gamebooster/ui/z;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/a;->P(Lcom/miui/gamebooster/ui/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/A;->cM:Lcom/miui/gamebooster/ui/z;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/a;->O(Lcom/miui/gamebooster/ui/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.class public Lcom/miui/antispam/ui/a/d;
.super Landroid/widget/ResourceCursorAdapter;
.source ""


# instance fields
.field protected VJ:Lcom/miui/antispam/util/a;

.field protected VK:Z

.field private VL:Z

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f03009e

    invoke-direct {p0, p1, v0}, Lcom/miui/antispam/ui/a/d;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/ui/a/d;->VL:Z

    iput-boolean v1, p0, Lcom/miui/antispam/ui/a/d;->VK:Z

    invoke-static {p1}, Lcom/miui/antispam/util/a;->getInstance(Landroid/content/Context;)Lcom/miui/antispam/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/a/d;->VJ:Lcom/miui/antispam/util/a;

    iput-object p1, p0, Lcom/miui/antispam/ui/a/d;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Vi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antispam/ui/a/d;->VK:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/ui/a/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public Vj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antispam/ui/a/d;->VL:Z

    invoke-virtual {p0}, Lcom/miui/antispam/ui/a/d;->notifyDataSetChanged()V

    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/antispam/ui/a/d;->VL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/e;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/e;->VQ:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/e;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/e;->VQ:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/a/e;

    invoke-direct {v1, v0}, Lcom/miui/antispam/ui/a/e;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

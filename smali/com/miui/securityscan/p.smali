.class final Lcom/miui/securityscan/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic Nv:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/p;->Nv:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/securityscan/p;->Nv:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nv(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/p;->Nv:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nv(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/customview/AutoPasteListView;->getChildCount()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/p;->Nv:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nv(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/p;->Nv:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/securityscan/MainActivity;->Nv(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/customview/AutoPasteListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v1, p3, p2

    if-ne v1, p4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/p;->Nv:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/securityscan/MainActivity;->NC(Lcom/miui/securityscan/MainActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/p;->Nv:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NJ(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/OverScrollLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/OverScrollLayout;->aFM(Z)V

    invoke-static {}, Lcom/miui/securityscan/d/a;->Ki()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/p;->Nv:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NJ(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/OverScrollLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/OverScrollLayout;->aFM(Z)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

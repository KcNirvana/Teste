.class final Lcom/miui/common/expandableview/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/expandableview/c;


# instance fields
.field final synthetic azH:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;


# direct methods
.method constructor <init>(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/expandableview/e;->azH:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aGH(Ljava/lang/String;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/e;->azH:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-static {v0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGN(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/common/expandableview/e;->azH:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-static {v0, p1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGO(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/expandableview/e;->azH:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-static {v0, p3}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGP(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;Z)V

    return-void
.end method

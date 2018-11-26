.class final Lcom/miui/securityscan/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field final synthetic Nx:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/r;->Nx:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/r;->Nx:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0, p2}, Lcom/miui/securityscan/MainActivity;->Of(Lcom/miui/securityscan/MainActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/miui/securityscan/r;->Nx:Lcom/miui/securityscan/MainActivity;

    const v0, 0x7f0a02bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1, v0}, Lcom/miui/securityscan/MainActivity;->Oe(Lcom/miui/securityscan/MainActivity;Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/AutoPasteListView;

    iget-object v0, p0, Lcom/miui/securityscan/r;->Nx:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NL(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFy(I)V

    iget-object v0, p0, Lcom/miui/securityscan/r;->Nx:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NL(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/s;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/s;-><init>(Lcom/miui/securityscan/r;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFA(Lcom/miui/common/customview/b;)V

    return-void
.end method

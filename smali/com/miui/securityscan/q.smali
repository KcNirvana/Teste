.class final Lcom/miui/securityscan/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field final synthetic Nw:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/q;->Nw:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/q;->Nw:Lcom/miui/securityscan/MainActivity;

    check-cast p2, Lcom/miui/securityscan/ui/main/OptimizingBar;

    iput-object p2, v0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    iget-object v0, p0, Lcom/miui/securityscan/q;->Nw:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    iget-object v1, p0, Lcom/miui/securityscan/q;->Nw:Lcom/miui/securityscan/MainActivity;

    iget-object v1, v1, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->init(Landroid/os/Handler;)V

    return-void
.end method

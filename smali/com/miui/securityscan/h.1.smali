.class final Lcom/miui/securityscan/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field final synthetic Nn:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/h;->Nn:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/h;->Nn:Lcom/miui/securityscan/MainActivity;

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-static {v0, p2}, Lcom/miui/securityscan/MainActivity;->Oc(Lcom/miui/securityscan/MainActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/securityscan/h;->Nn:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NJ(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/OverScrollLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/h;->Nn:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/securityscan/MainActivity;->NK(Lcom/miui/securityscan/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/OverScrollLayout;->aFK(Landroid/widget/LinearLayout;)V

    return-void
.end method

.class final Lcom/miui/securityscan/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic Nu:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/o;->Nu:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/o;->Nu:Lcom/miui/securityscan/MainActivity;

    iget-object v1, p0, Lcom/miui/securityscan/o;->Nu:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/securityscan/MainActivity;->Nv(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/customview/AutoPasteListView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->NY(Lcom/miui/securityscan/MainActivity;I)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/o;->Nu:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nv(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/customview/AutoPasteListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/o;->Nu:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nv(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/customview/AutoPasteListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

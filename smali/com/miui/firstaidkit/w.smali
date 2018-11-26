.class final Lcom/miui/firstaidkit/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/firstaidkit/b/b;


# instance fields
.field final synthetic vI:Lcom/miui/firstaidkit/FirstAidKitActivity;

.field final synthetic vJ:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/w;->vI:Lcom/miui/firstaidkit/FirstAidKitActivity;

    iput-object p2, p0, Lcom/miui/firstaidkit/w;->vJ:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public vK(I)V
    .locals 3

    const-string/jumbo v0, "FirstAidKitActivity"

    const-string/jumbo v1, "refreshOptimizingUi onFinishScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/firstaidkit/w;->vI:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wz(Lcom/miui/firstaidkit/FirstAidKitActivity;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wF(Lcom/miui/firstaidkit/FirstAidKitActivity;I)I

    iget-object v0, p0, Lcom/miui/firstaidkit/w;->vI:Lcom/miui/firstaidkit/FirstAidKitActivity;

    iget-object v0, v0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uJ:Lcom/miui/firstaidkit/a;

    new-instance v1, Lcom/miui/firstaidkit/x;

    iget-object v2, p0, Lcom/miui/firstaidkit/w;->vJ:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-direct {v1, p0, v2, p1}, Lcom/miui/firstaidkit/x;-><init>(Lcom/miui/firstaidkit/w;Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;I)V

    invoke-virtual {v0, v1}, Lcom/miui/firstaidkit/a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public vL(Lcom/miui/securityscan/scanner/c;)V
    .locals 0

    return-void
.end method

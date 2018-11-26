.class final Lcom/miui/firstaidkit/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vK:Lcom/miui/firstaidkit/w;

.field final synthetic vL:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

.field final synthetic vM:I


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/w;Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/x;->vK:Lcom/miui/firstaidkit/w;

    iput-object p2, p0, Lcom/miui/firstaidkit/x;->vL:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    iput p3, p0, Lcom/miui/firstaidkit/x;->vM:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/firstaidkit/x;->vK:Lcom/miui/firstaidkit/w;

    iget-object v1, v1, Lcom/miui/firstaidkit/w;->vI:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wD(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/ui/ProgressLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/x;->vL:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    iget v3, p0, Lcom/miui/firstaidkit/x;->vM:I

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;->vE(Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;Z)V

    const-string/jumbo v0, "FirstAidKitActivity"

    const-string/jumbo v1, "refreshOptimizingUi refreshOptimizingUi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/firstaidkit/x;->vK:Lcom/miui/firstaidkit/w;

    iget-object v0, v0, Lcom/miui/firstaidkit/w;->vI:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wq()V

    return-void
.end method

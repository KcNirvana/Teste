.class final Lcom/miui/permcenter/autostart/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic OB:Lcom/miui/permcenter/autostart/j;

.field final synthetic OC:Z

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/autostart/j;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/k;->OB:Lcom/miui/permcenter/autostart/j;

    iput-boolean p2, p0, Lcom/miui/permcenter/autostart/k;->OC:Z

    iput-object p3, p0, Lcom/miui/permcenter/autostart/k;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/k;->OC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/k;->OB:Lcom/miui/permcenter/autostart/j;

    iget-object v0, v0, Lcom/miui/permcenter/autostart/j;->Ox:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/k;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/common/b/k;->forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

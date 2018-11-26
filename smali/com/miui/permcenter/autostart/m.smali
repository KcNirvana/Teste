.class final Lcom/miui/permcenter/autostart/m;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic OE:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

.field final synthetic OF:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/m;->OE:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    iput p2, p0, Lcom/miui/permcenter/autostart/m;->val$type:I

    iput-boolean p3, p0, Lcom/miui/permcenter/autostart/m;->OF:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/autostart/m;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    iget v0, p0, Lcom/miui/permcenter/autostart/m;->val$type:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/m;->OE:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-static {v0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/autostart/m;->OE:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-static {v1}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pq(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/permcenter/autostart/m;->OE:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-static {v3}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pr(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-wide/16 v4, 0x4000

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/miui/permission/a;->bBL(JI[Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/m;->OF:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/m;->OE:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/m;->OE:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-static {v1}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pr(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/b/k;->forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/permcenter/autostart/m;->OE:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/autostart/m;->OE:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-static {v1}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pr(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/autostart/m;->OE:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-static {v2}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Po(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/g;->SV(Landroid/content/Context;Ljava/lang/String;Z)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

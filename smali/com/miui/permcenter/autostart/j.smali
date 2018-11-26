.class final Lcom/miui/permcenter/autostart/j;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic OA:Z

.field final synthetic Ox:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

.field final synthetic Oy:I

.field final synthetic Oz:Z

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;ILjava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/j;->Ox:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    iput p2, p0, Lcom/miui/permcenter/autostart/j;->Oy:I

    iput-object p3, p0, Lcom/miui/permcenter/autostart/j;->val$packageName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/miui/permcenter/autostart/j;->Oz:Z

    iput-boolean p5, p0, Lcom/miui/permcenter/autostart/j;->OA:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/autostart/j;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    iget-object v0, p0, Lcom/miui/permcenter/autostart/j;->Ox:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {v0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v0

    iget v1, p0, Lcom/miui/permcenter/autostart/j;->Oy:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/permcenter/autostart/j;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-wide/16 v4, 0x4000

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/miui/permission/a;->bBL(JI[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/j;->Ox:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/autostart/j;->val$packageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/permcenter/autostart/j;->Oz:Z

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/g;->SV(Landroid/content/Context;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/miui/permcenter/autostart/j;->Ox:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/j;->Ox:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-virtual {v1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/g;->SU(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Pc(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/j;->Ox:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Pa(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/autostart/k;

    iget-boolean v2, p0, Lcom/miui/permcenter/autostart/j;->OA:Z

    iget-object v3, p0, Lcom/miui/permcenter/autostart/j;->val$packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/permcenter/autostart/k;-><init>(Lcom/miui/permcenter/autostart/j;ZLjava/lang/String;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    return-object v0
.end method

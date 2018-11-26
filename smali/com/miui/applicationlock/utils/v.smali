.class final Lcom/miui/applicationlock/utils/v;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic abM:Lcom/miui/applicationlock/utils/k;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/utils/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/v;->abM:Lcom/miui/applicationlock/utils/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/utils/v;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/v;->abM:Lcom/miui/applicationlock/utils/k;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->afg(Lcom/miui/applicationlock/utils/k;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->afl(Lcom/miui/applicationlock/utils/e;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/utils/v;->abM:Lcom/miui/applicationlock/utils/k;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->afh(Lcom/miui/applicationlock/utils/k;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/applicationlock/utils/v;->abM:Lcom/miui/applicationlock/utils/k;

    invoke-static {v2}, Lcom/miui/applicationlock/utils/k;->afh(Lcom/miui/applicationlock/utils/k;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/securitycenter/service/RemoteService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "cmd"

    const-string/jumbo v3, "app_lock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "param"

    const-string/jumbo v3, "handle_notifycation"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/applicationlock/utils/v;->abM:Lcom/miui/applicationlock/utils/k;

    invoke-static {v2}, Lcom/miui/applicationlock/utils/k;->afh(Lcom/miui/applicationlock/utils/k;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afO()J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v1, 0x2

    const-wide/32 v4, 0x4d3f6400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-object v7
.end method

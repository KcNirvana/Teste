.class final Lcom/miui/appmanager/receiver/b;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aRQ:Lcom/miui/appmanager/receiver/a;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/receiver/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/receiver/b;->aRQ:Lcom/miui/appmanager/receiver/a;

    iput-object p2, p0, Lcom/miui/appmanager/receiver/b;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/receiver/b;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/receiver/b;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "com.xiaomi.smarthome"

    invoke-static {v0, v1}, Lcom/miui/common/b/k;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/appmanager/receiver/a;->-get0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/receiver/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/n;->bmS(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/appmanager/receiver/a;->biA(J)J

    :cond_1
    return-object v4
.end method

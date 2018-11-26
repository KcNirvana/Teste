.class final Lcom/miui/securitycenter/e;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aYh:Lcom/miui/securitycenter/Application;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/e;->aYh:Lcom/miui/securitycenter/Application;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securitycenter/e;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "No securitycenter installed on pad"

    invoke-static {v0}, Lcom/miui/common/b/h;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/e;->aYh:Lcom/miui/securitycenter/Application;

    iget-object v1, p0, Lcom/miui/securitycenter/e;->aYh:Lcom/miui/securitycenter/Application;

    invoke-virtual {v1}, Lcom/miui/securitycenter/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/b/k;->forceStopPackage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

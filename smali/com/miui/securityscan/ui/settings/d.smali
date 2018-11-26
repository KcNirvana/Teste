.class Lcom/miui/securityscan/ui/settings/d;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private Ir:Ljava/util/Set;

.field final synthetic Is:Lcom/miui/securityscan/ui/settings/WhiteListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/d;->Is:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/ui/settings/d;->Ir:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/settings/d;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/d;->Ir:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/securityscan/utils/g;->IK(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/settings/d;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    new-instance v0, Lcom/miui/securityscan/ui/settings/c;

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/d;->Is:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/ui/settings/c;-><init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Lcom/miui/securityscan/ui/settings/c;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/ui/settings/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

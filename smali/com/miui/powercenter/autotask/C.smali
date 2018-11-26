.class final Lcom/miui/powercenter/autotask/C;
.super Lmiui/os/AsyncTaskWithProgress;
.source ""


# instance fields
.field final synthetic aLO:[Ljava/lang/Long;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/FragmentManager;[Ljava/lang/Long;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/miui/powercenter/autotask/C;->aLO:[Ljava/lang/Long;

    iput-object p3, p0, Lcom/miui/powercenter/autotask/C;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/C;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/powercenter/autotask/C;->aLO:[Ljava/lang/Long;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/powercenter/autotask/C;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/C;->aLO:[Ljava/lang/Long;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/miui/powercenter/autotask/f;->aVR(Landroid/content/Context;J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    mul-int/lit8 v3, v0, 0x64

    iget-object v4, p0, Lcom/miui/powercenter/autotask/C;->aLO:[Ljava/lang/Long;

    array-length v4, v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/autotask/C;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/C;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/C;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/C;->aLO:[Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/miui/powercenter/autotask/f;->aVS(Landroid/content/Context;[Ljava/lang/Long;)V

    return-void
.end method

.class Lcom/miui/appmanager/u;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private aVV:Ljava/util/List;

.field final synthetic aVW:Lcom/miui/appmanager/AppManagerMainActivity;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/appmanager/u;->aVW:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/u;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/appmanager/u;->aVV:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/u;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/miui/appmanager/u;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v8

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/u;->aVV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/appmanager/u;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v8

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/u;->aVV:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/i;

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/miui/appmanager/u;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->bhd()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->getUid()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/appmanager/n;->bmK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Lcom/miui/appmanager/a;

    move-result-object v2

    iget-wide v4, v2, Lcom/miui/appmanager/a;->aRR:J

    iget-wide v6, v2, Lcom/miui/appmanager/a;->aRS:J

    add-long/2addr v4, v6

    iget-wide v2, v2, Lcom/miui/appmanager/a;->dataSize:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/miui/appmanager/u;->aVW:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5, v0, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->bpb(Lcom/miui/appmanager/AppManagerMainActivity;ILjava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/miui/appmanager/u;->aVW:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v2}, Lcom/miui/appmanager/AppManagerMainActivity;->bot(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v4, p0, Lcom/miui/appmanager/u;->aVW:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v4, v4, Lcom/miui/appmanager/AppManagerMainActivity;->aVJ:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-static {v2, v3, v0, v4}, Lcom/miui/appmanager/n;->bmL(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_1

    :cond_4
    return-object v8
.end method

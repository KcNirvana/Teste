.class final Lcom/miui/gamebooster/service/F;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic ni:Lcom/miui/gamebooster/service/f;

.field final synthetic nj:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/f;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/F;->ni:Lcom/miui/gamebooster/service/f;

    iput-object p2, p0, Lcom/miui/gamebooster/service/F;->nj:Ljava/lang/String;

    iput p3, p0, Lcom/miui/gamebooster/service/F;->val$uid:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/service/F;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/F;->ni:Lcom/miui/gamebooster/service/f;

    iget-object v0, v0, Lcom/miui/gamebooster/service/f;->my:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pM(Lcom/miui/gamebooster/service/d;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/F;->nj:Ljava/lang/String;

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/k;->aIn(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/F;->ni:Lcom/miui/gamebooster/service/f;

    iget-object v1, p0, Lcom/miui/gamebooster/service/F;->nj:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/service/F;->val$uid:I

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/service/f;->qa(Lcom/miui/gamebooster/service/f;Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/F;->ni:Lcom/miui/gamebooster/service/f;

    invoke-static {v0}, Lcom/miui/gamebooster/service/f;->pZ(Lcom/miui/gamebooster/service/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/t;->aJr(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/F;->ni:Lcom/miui/gamebooster/service/f;

    iget-object v1, p0, Lcom/miui/gamebooster/service/F;->nj:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/service/F;->val$uid:I

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/service/f;->qc(Lcom/miui/gamebooster/service/f;Ljava/lang/String;I)V

    :cond_0
    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

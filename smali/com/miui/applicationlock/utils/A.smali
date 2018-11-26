.class final Lcom/miui/applicationlock/utils/A;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/A;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/utils/A;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afS()I

    move-result v1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/A;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->afj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ge v1, v0, :cond_1

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/miui/a/d/a/a;->bua(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/miui/applicationlock/utils/m;->abw:Lmiui/util/ArraySet;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lmiui/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/A;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->aeS(Landroid/content/Context;)V

    add-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afY(I)V

    goto :goto_0

    :cond_1
    return-object v4
.end method

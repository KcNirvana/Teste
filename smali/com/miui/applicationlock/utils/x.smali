.class final Lcom/miui/applicationlock/utils/x;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic abO:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/x;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/miui/applicationlock/utils/x;->abO:Z

    iput-object p3, p0, Lcom/miui/applicationlock/utils/x;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/utils/x;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    iget-object v0, p0, Lcom/miui/applicationlock/utils/x;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->afk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/utils/x;->abO:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/applicationlock/utils/m;->abx:Lmiui/util/ArraySet;

    iget-object v1, p0, Lcom/miui/applicationlock/utils/x;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afW()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/x;->val$context:Landroid/content/Context;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/applicationlock/utils/m;->afT(II)J

    move-result-wide v2

    const-string/jumbo v1, "app_installed_of_midrop"

    const/4 v4, 0x5

    invoke-static {v0, v2, v3, v1, v4}, Lcom/miui/applicationlock/utils/k;->afn(Landroid/content/Context;JLjava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

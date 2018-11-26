.class final Lcom/miui/applicationlock/utils/w;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic abN:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/w;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/applicationlock/utils/w;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/applicationlock/utils/w;->abN:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/utils/w;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/w;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->afj(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    sget-object v0, Lcom/miui/applicationlock/utils/m;->abw:Lmiui/util/ArraySet;

    iget-object v1, p0, Lcom/miui/applicationlock/utils/w;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afS()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/w;->val$context:Landroid/content/Context;

    const/16 v1, 0x14

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/miui/applicationlock/utils/m;->afT(II)J

    move-result-wide v2

    const-string/jumbo v1, "app_installed"

    const/4 v4, 0x4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/miui/applicationlock/utils/k;->afn(Landroid/content/Context;JLjava/lang/String;I)V

    :cond_1
    :goto_0
    return-object v8

    :cond_2
    iget-boolean v0, p0, Lcom/miui/applicationlock/utils/w;->abN:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/applicationlock/utils/w;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afU()I

    move-result v7

    const/4 v0, 0x2

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/w;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/applicationlock/utils/w;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "000011"

    invoke-static {v1, v2}, Lcom/miui/applicationlock/utils/k;->afi(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v1, p0, Lcom/miui/applicationlock/utils/w;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201ed

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    const v1, 0x7f07079d

    const v2, 0x7f0707a7

    const/16 v4, 0x67

    const/4 v5, 0x3

    invoke-static/range {v0 .. v6}, Lcom/miui/applicationlock/utils/m;->afP(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;)V

    const-string/jumbo v0, "pre_guide_notification"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajy(Ljava/lang/String;)V

    add-int/lit8 v0, v7, 0x1

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afV(I)V

    goto :goto_0
.end method

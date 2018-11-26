.class final Lcom/miui/applicationlock/utils/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/y;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v5, 0x4

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/y;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->afj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afS()I

    move-result v0

    if-ge v0, v7, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/y;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/applicationlock/utils/y;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "000012"

    invoke-static {v1, v2}, Lcom/miui/applicationlock/utils/k;->afi(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v1, p0, Lcom/miui/applicationlock/utils/y;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201ed

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    const v1, 0x7f07079e

    const v2, 0x7f0707a8

    const/16 v4, 0x68

    invoke-static/range {v0 .. v6}, Lcom/miui/applicationlock/utils/m;->afP(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;)V

    const-string/jumbo v0, "post_guide_notification"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajy(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/miui/applicationlock/utils/m;->afY(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/utils/y;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "app_installed"

    invoke-static {v0, v5, v1}, Lcom/miui/applicationlock/utils/k;->afm(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

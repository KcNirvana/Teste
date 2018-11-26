.class final Lcom/miui/applicationlock/utils/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abP:Landroid/content/Intent;

.field final synthetic abQ:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/z;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/applicationlock/utils/z;->abP:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/applicationlock/utils/z;->abQ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/applicationlock/utils/z;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->afk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afW()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/z;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/applicationlock/utils/z;->abP:Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/utils/z;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "com.xiaomi.midrop"

    invoke-static {v1, v2}, Lcom/miui/applicationlock/utils/m;->afZ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const v1, 0x7f07079f

    const v2, 0x7f0707a9

    const/16 v4, 0x69

    const/4 v5, 0x5

    invoke-static/range {v0 .. v6}, Lcom/miui/applicationlock/utils/m;->afP(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/miui/applicationlock/utils/z;->abQ:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajz(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afW()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->aga(I)V

    :cond_0
    return-void
.end method

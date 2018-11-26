.class final Lcom/miui/common/a/a/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic azq:Lcom/miui/common/a/a/d;


# direct methods
.method constructor <init>(Lcom/miui/common/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/a/a/m;->azq:Lcom/miui/common/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/m;->azq:Lcom/miui/common/a/a/d;

    invoke-static {v0}, Lcom/miui/common/a/a/d;->aGy(Lcom/miui/common/a/a/d;)Lmiui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/m;->azq:Lcom/miui/common/a/a/d;

    invoke-static {v0}, Lcom/miui/common/a/a/d;->aGy(Lcom/miui/common/a/a/d;)Lmiui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/m;->azq:Lcom/miui/common/a/a/d;

    invoke-static {v0}, Lcom/miui/common/a/a/d;->aGx(Lcom/miui/common/a/a/d;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/m;->azq:Lcom/miui/common/a/a/d;

    invoke-static {v0}, Lcom/miui/common/a/a/d;->aGx(Lcom/miui/common/a/a/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/a/a/m;->azq:Lcom/miui/common/a/a/d;

    invoke-static {v0}, Lcom/miui/common/a/a/d;->aGy(Lcom/miui/common/a/a/d;)Lmiui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

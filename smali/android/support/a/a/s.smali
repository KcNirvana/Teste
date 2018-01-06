.class Landroid/support/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/a/a/r;


# direct methods
.method constructor <init>(Landroid/support/a/a/r;)V
    .locals 0

    iput-object p1, p0, Landroid/support/a/a/s;->a:Landroid/support/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/s;->a:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/s;->a:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->b(Landroid/support/a/a/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/a/a/s;->a:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->k()V

    invoke-static {}, Landroid/support/v4/c/a;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/a/a/s;->a:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/a/a/s;->a:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->b()V

    iget-object v0, p0, Landroid/support/a/a/s;->a:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->b()V

    iget-object v0, p0, Landroid/support/a/a/s;->a:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->c(Landroid/support/a/a/r;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/a/a/s;->a:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->o()V

    :cond_3
    iget-object v0, p0, Landroid/support/a/a/s;->a:Landroid/support/a/a/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/a/a/r;->a(Z)V

    invoke-static {}, Landroid/support/v4/c/a;->a()V

    goto :goto_0
.end method

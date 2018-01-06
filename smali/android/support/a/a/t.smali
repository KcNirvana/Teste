.class Landroid/support/a/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/a/a/r;


# direct methods
.method constructor <init>(Landroid/support/a/a/r;)V
    .locals 0

    iput-object p1, p0, Landroid/support/a/a/t;->a:Landroid/support/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/t;->a:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/t;->a:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    invoke-virtual {v0}, Landroid/support/a/a/r$e;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/t;->a:Landroid/support/a/a/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r;Z)Z

    return-void
.end method

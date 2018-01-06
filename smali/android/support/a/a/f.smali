.class Landroid/support/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/support/a/a/c;


# direct methods
.method constructor <init>(Landroid/support/a/a/c;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/a/a/f;->b:Landroid/support/a/a/c;

    iput-object p2, p0, Landroid/support/a/a/f;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$w;

    iget-object v2, p0, Landroid/support/a/a/f;->b:Landroid/support/a/a/c;

    invoke-static {v2, v0}, Landroid/support/a/a/c;->a(Landroid/support/a/a/c;Landroid/support/a/a/r$w;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/a/a/f;->b:Landroid/support/a/a/c;

    invoke-static {v0}, Landroid/support/a/a/c;->c(Landroid/support/a/a/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/a/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

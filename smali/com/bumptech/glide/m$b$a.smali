.class public final Lcom/bumptech/glide/m$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/m$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/m$b;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/m$b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/m$b$a;->a:Lcom/bumptech/glide/m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/m$b$a;->d:Z

    iput-object p2, p0, Lcom/bumptech/glide/m$b$a;->b:Ljava/lang/Object;

    invoke-static {p2}, Lcom/bumptech/glide/m;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/m$b$a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/g",
            "<TA;TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m$b$a;->a:Lcom/bumptech/glide/m$b;

    iget-object v0, v0, Lcom/bumptech/glide/m$b;->a:Lcom/bumptech/glide/m;

    invoke-static {v0}, Lcom/bumptech/glide/m;->e(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/m$c;

    move-result-object v10

    new-instance v0, Lcom/bumptech/glide/g;

    iget-object v1, p0, Lcom/bumptech/glide/m$b$a;->a:Lcom/bumptech/glide/m$b;

    iget-object v1, v1, Lcom/bumptech/glide/m$b;->a:Lcom/bumptech/glide/m;

    invoke-static {v1}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/m;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/m$b$a;->a:Lcom/bumptech/glide/m$b;

    iget-object v2, v2, Lcom/bumptech/glide/m$b;->a:Lcom/bumptech/glide/m;

    invoke-static {v2}, Lcom/bumptech/glide/m;->b(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/j;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/m$b$a;->c:Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/m$b$a;->a:Lcom/bumptech/glide/m$b;

    invoke-static {v4}, Lcom/bumptech/glide/m$b;->a(Lcom/bumptech/glide/m$b;)Lcom/bumptech/glide/load/c/o;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/m$b$a;->a:Lcom/bumptech/glide/m$b;

    invoke-static {v5}, Lcom/bumptech/glide/m$b;->b(Lcom/bumptech/glide/m$b;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/m$b$a;->a:Lcom/bumptech/glide/m$b;

    iget-object v6, v6, Lcom/bumptech/glide/m$b;->a:Lcom/bumptech/glide/m;

    invoke-static {v6}, Lcom/bumptech/glide/m;->c(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/d/n;

    move-result-object v7

    iget-object v6, p0, Lcom/bumptech/glide/m$b$a;->a:Lcom/bumptech/glide/m$b;

    iget-object v6, v6, Lcom/bumptech/glide/m$b;->a:Lcom/bumptech/glide/m;

    invoke-static {v6}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/d/h;

    move-result-object v8

    iget-object v6, p0, Lcom/bumptech/glide/m$b$a;->a:Lcom/bumptech/glide/m$b;

    iget-object v6, v6, Lcom/bumptech/glide/m$b;->a:Lcom/bumptech/glide/m;

    invoke-static {v6}, Lcom/bumptech/glide/m;->e(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/m$c;

    move-result-object v9

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/g;-><init>(Landroid/content/Context;Lcom/bumptech/glide/j;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d/n;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/m$c;)V

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/m$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    iget-boolean v1, p0, Lcom/bumptech/glide/m$b$a;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/m$b$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    :cond_0
    return-object v0
.end method

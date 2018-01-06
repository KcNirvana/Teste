.class public Lcom/bumptech/glide/d/o;
.super Landroid/support/v4/app/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d/o$1;,
        Lcom/bumptech/glide/d/o$a;
    }
.end annotation


# instance fields
.field private aa:Lcom/bumptech/glide/m;

.field private final ab:Lcom/bumptech/glide/d/a;

.field private final ac:Lcom/bumptech/glide/d/m;

.field private final ad:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/d/o;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Lcom/bumptech/glide/d/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/d/a;

    invoke-direct {v0}, Lcom/bumptech/glide/d/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/o;-><init>(Lcom/bumptech/glide/d/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/d/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/app/n;-><init>()V

    new-instance v0, Lcom/bumptech/glide/d/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/d/o$a;-><init>(Lcom/bumptech/glide/d/o;Lcom/bumptech/glide/d/o$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/d/o;->ac:Lcom/bumptech/glide/d/m;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/o;->ad:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/bumptech/glide/d/o;->ab:Lcom/bumptech/glide/d/a;

    return-void
.end method

.method private a(Lcom/bumptech/glide/d/o;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ad:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/bumptech/glide/d/o;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ad:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method H()Lcom/bumptech/glide/d/a;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ab:Lcom/bumptech/glide/d/a;

    return-object v0
.end method

.method public I()Lcom/bumptech/glide/m;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->aa:Lcom/bumptech/glide/m;

    return-object v0
.end method

.method public J()Lcom/bumptech/glide/d/m;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ac:Lcom/bumptech/glide/d/m;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/n;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/bumptech/glide/d/l;->a()Lcom/bumptech/glide/d/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/d/o;->b()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->f()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/l;->a(Landroid/support/v4/app/u;)Lcom/bumptech/glide/d/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/o;->ae:Lcom/bumptech/glide/d/o;

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ae:Lcom/bumptech/glide/d/o;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ae:Lcom/bumptech/glide/d/o;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/o;->a(Lcom/bumptech/glide/d/o;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/m;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/d/o;->aa:Lcom/bumptech/glide/m;

    return-void
.end method

.method public h()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/n;->h()V

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ab:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->a()V

    return-void
.end method

.method public k()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/n;->k()V

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ab:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->b()V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/n;->m()V

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ab:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->c()V

    return-void
.end method

.method public o()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/n;->o()V

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ae:Lcom/bumptech/glide/d/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->ae:Lcom/bumptech/glide/d/o;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/o;->b(Lcom/bumptech/glide/d/o;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/d/o;->ae:Lcom/bumptech/glide/d/o;

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/n;->onLowMemory()V

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->aa:Lcom/bumptech/glide/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/o;->aa:Lcom/bumptech/glide/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/m;->a()V

    :cond_0
    return-void
.end method

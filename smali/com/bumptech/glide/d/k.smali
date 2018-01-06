.class public Lcom/bumptech/glide/d/k;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d/k$1;,
        Lcom/bumptech/glide/d/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/d/a;

.field private final b:Lcom/bumptech/glide/d/m;

.field private c:Lcom/bumptech/glide/m;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/d/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/d/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/d/a;

    invoke-direct {v0}, Lcom/bumptech/glide/d/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/k;-><init>(Lcom/bumptech/glide/d/a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/d/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/bumptech/glide/d/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/d/k$a;-><init>(Lcom/bumptech/glide/d/k;Lcom/bumptech/glide/d/k$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/d/k;->b:Lcom/bumptech/glide/d/m;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/k;->d:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/bumptech/glide/d/k;->a:Lcom/bumptech/glide/d/a;

    return-void
.end method

.method private a(Lcom/bumptech/glide/d/k;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/bumptech/glide/d/k;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/d/a;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->a:Lcom/bumptech/glide/d/a;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/m;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/d/k;->c:Lcom/bumptech/glide/m;

    return-void
.end method

.method public b()Lcom/bumptech/glide/m;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->c:Lcom/bumptech/glide/m;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/d/m;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->b:Lcom/bumptech/glide/d/m;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-static {}, Lcom/bumptech/glide/d/l;->a()Lcom/bumptech/glide/d/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/l;->a(Landroid/app/FragmentManager;)Lcom/bumptech/glide/d/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/k;->e:Lcom/bumptech/glide/d/k;

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->e:Lcom/bumptech/glide/d/k;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->e:Lcom/bumptech/glide/d/k;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/k;->a(Lcom/bumptech/glide/d/k;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->a:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->c()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->e:Lcom/bumptech/glide/d/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->e:Lcom/bumptech/glide/d/k;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/k;->b(Lcom/bumptech/glide/d/k;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/d/k;->e:Lcom/bumptech/glide/d/k;

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->c:Lcom/bumptech/glide/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->c:Lcom/bumptech/glide/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/m;->a()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->a:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->a:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->b()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->c:Lcom/bumptech/glide/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/d/k;->c:Lcom/bumptech/glide/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->a(I)V

    :cond_0
    return-void
.end method

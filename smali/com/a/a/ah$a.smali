.class Lcom/a/a/ah$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/a/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/a",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/ac",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/a/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/u",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/a/a/c/a;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/a/a/c/a",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/a/a/ac;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/a/a/ac;

    :goto_0
    iput-object v0, p0, Lcom/a/a/ah$a;->d:Lcom/a/a/ac;

    instance-of v0, p1, Lcom/a/a/u;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/a/a/u;

    :goto_1
    iput-object p1, p0, Lcom/a/a/ah$a;->e:Lcom/a/a/u;

    iget-object v0, p0, Lcom/a/a/ah$a;->d:Lcom/a/a/ac;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/ah$a;->e:Lcom/a/a/u;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/a/a/b/a;->a(Z)V

    iput-object p2, p0, Lcom/a/a/ah$a;->a:Lcom/a/a/c/a;

    iput-boolean p3, p0, Lcom/a/a/ah$a;->b:Z

    iput-object p4, p0, Lcom/a/a/ah$a;->c:Ljava/lang/Class;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/a/a/c/a;ZLjava/lang/Class;Lcom/a/a/ah$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/ah$a;-><init>(Ljava/lang/Object;Lcom/a/a/c/a;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/a/a/k;Lcom/a/a/c/a;)Lcom/a/a/ai;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/k;",
            "Lcom/a/a/c/a",
            "<TT;>;)",
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/a/a/ah$a;->a:Lcom/a/a/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/ah$a;->a:Lcom/a/a/c/a;

    invoke-virtual {v0, p2}, Lcom/a/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/ah$a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/ah$a;->a:Lcom/a/a/c/a;

    invoke-virtual {v0}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/a/a/ah;

    iget-object v1, p0, Lcom/a/a/ah$a;->d:Lcom/a/a/ac;

    iget-object v2, p0, Lcom/a/a/ah$a;->e:Lcom/a/a/u;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/a/a/ah;-><init>(Lcom/a/a/ac;Lcom/a/a/u;Lcom/a/a/k;Lcom/a/a/c/a;Lcom/a/a/ak;Lcom/a/a/ah$1;)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/a/ah$a;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

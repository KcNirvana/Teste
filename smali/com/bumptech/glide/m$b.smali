.class public final Lcom/bumptech/glide/m$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/m$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/m;

.field private final b:Lcom/bumptech/glide/load/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/o",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/o",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/m$b;->a:Lcom/bumptech/glide/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/m$b;->b:Lcom/bumptech/glide/load/c/o;

    iput-object p3, p0, Lcom/bumptech/glide/m$b;->c:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/m$b;)Lcom/bumptech/glide/load/c/o;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m$b;->b:Lcom/bumptech/glide/load/c/o;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/m$b;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/m$b;->c:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/m$b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/m$b",
            "<TA;TT;>.a;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/m$b$a;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/m$b$a;-><init>(Lcom/bumptech/glide/m$b;Ljava/lang/Object;)V

    return-object v0
.end method

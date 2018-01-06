.class public Lcom/bumptech/glide/g/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/c",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/g/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/e",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/bumptech/glide/g/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/d",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/g/a/e;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/g/a/e;->a:Lcom/bumptech/glide/g/a/e;

    new-instance v0, Lcom/bumptech/glide/g/a/e$a;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/e$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/g/a/e;->b:Lcom/bumptech/glide/g/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/g/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/g/a/d",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/g/a/e;->b:Lcom/bumptech/glide/g/a/d;

    return-object v0
.end method

.method public static b()Lcom/bumptech/glide/g/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/g/a/c",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/g/a/e;->a:Lcom/bumptech/glide/g/a/e;

    return-object v0
.end method

.method static synthetic c()Lcom/bumptech/glide/g/a/e;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/g/a/e;->a:Lcom/bumptech/glide/g/a/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c$a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

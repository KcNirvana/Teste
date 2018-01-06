.class public interface abstract Lcom/bumptech/glide/load/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/bumptech/glide/load/c/f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/c/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/g;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/c/f;->a:Lcom/bumptech/glide/load/c/f;

    new-instance v0, Lcom/bumptech/glide/load/c/l$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/l$a;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/c/l$a;->a()Lcom/bumptech/glide/load/c/l;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/f;->b:Lcom/bumptech/glide/load/c/f;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

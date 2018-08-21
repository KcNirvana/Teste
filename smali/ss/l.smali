.class public interface abstract Lss/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lss/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lss/l$1;

    invoke-direct {v0}, Lss/l$1;-><init>()V

    sput-object v0, Lss/l;->a:Lss/l;

    return-void
.end method


# virtual methods
.method public abstract a(Lss/q;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/q;",
            ")",
            "Ljava/util/List",
            "<",
            "Lss/k;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lss/q;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/q;",
            "Ljava/util/List",
            "<",
            "Lss/k;",
            ">;)V"
        }
    .end annotation
.end method

.class public interface abstract Lss/ss/ss/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lss/ss/ss/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lss/ss/ss/m$1;

    invoke-direct {v0}, Lss/ss/ss/m$1;-><init>()V

    sput-object v0, Lss/ss/ss/m;->a:Lss/ss/ss/m;

    return-void
.end method


# virtual methods
.method public abstract a(ILss/ss/ss/a;)V
.end method

.method public abstract a(ILgK/e;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;Z)Z"
        }
    .end annotation
.end method

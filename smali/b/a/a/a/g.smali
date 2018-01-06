.class public Lb/a/a/a/g;
.super Lb/a/a/a/c;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lb/a/a/a/c;-><init>(B)V

    iput-object p2, p0, Lb/a/a/a/g;->a:Ljava/lang/Class;

    return-void
.end method

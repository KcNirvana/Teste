.class public Lb/a/a/b/f;
.super Lb/a/a/f;
.source "SourceFile"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/a/a/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/b/f;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lb/a/a/f;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/b/f;->a:I

    iput p1, p0, Lb/a/a/b/f;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lb/a/a/f;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/b/f;->a:I

    return-void
.end method

.class public Lb/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lb/a/a/b/e;

.field private final b:Lb/a/a/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb/a/a/b/a$a;

    invoke-direct {v0}, Lb/a/a/b/a$a;-><init>()V

    invoke-direct {p0, v0}, Lb/a/a/e;-><init>(Lb/a/a/b/g;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/b/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/c/c;

    invoke-direct {v0}, Lb/a/a/c/c;-><init>()V

    iput-object v0, p0, Lb/a/a/e;->b:Lb/a/a/c/c;

    iget-object v0, p0, Lb/a/a/e;->b:Lb/a/a/c/c;

    invoke-interface {p1, v0}, Lb/a/a/b/g;->a(Lb/a/a/c/d;)Lb/a/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/e;->a:Lb/a/a/b/e;

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lb/a/a/e;->b:Lb/a/a/c/c;

    invoke-virtual {v0, p2}, Lb/a/a/c/c;->a([B)V

    iget-object v0, p0, Lb/a/a/e;->a:Lb/a/a/b/e;

    invoke-interface {p1, v0}, Lb/a/a/a;->a(Lb/a/a/b/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a/a/e;->a:Lb/a/a/b/e;

    invoke-virtual {v0}, Lb/a/a/b/e;->y()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/e;->a:Lb/a/a/b/e;

    invoke-virtual {v1}, Lb/a/a/b/e;->y()V

    throw v0
.end method

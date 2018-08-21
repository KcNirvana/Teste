.class public final Lss/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lss/ss/d;

.field private final b:Lss/ss/b;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/c;->b:Lss/ss/b;

    invoke-virtual {v0}, Lss/ss/b;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/c;->b:Lss/ss/b;

    invoke-virtual {v0}, Lss/ss/b;->flush()V

    return-void
.end method
